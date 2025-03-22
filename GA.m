function [Best_score, Best_x, cg_curve] = GA(nPop, Max_iter, lb, ub, dim, fobj)
% GA 遗传算法（连续优化问题适用）
% 输入参数：
%   nPop - 种群数量
%   Max_iter - 最大迭代次数
%   lb - 变量下边界（向量形式）
%   ub - 变量上边界（向量形式）
%   dim - 问题维数
%   fobj - 适应度函数句柄（形如 @(x) fitness(x)）
% 输出参数：
%   Best_score - 全局最优适应度值
%   Best_x - 全局最优解向量
%   cg_curve - 每次迭代最优适应度值曲线

% 参数设置（可调整）
Pc = 0.8;     % 交叉概率
Pm = 0.1;     % 变异概率
sigma = 0.1;  % 高斯变异标准差

% 初始化种群（实数编码）
X = lb + (ub - lb) .* rand(nPop, dim); % 直接生成实数解[2](@ref)
fitness = zeros(nPop, 1);
for i = 1:nPop
    fitness(i) = fobj(X(i, :));
end

% 初始化最优解
Best_score = inf;
Best_x = zeros(1, dim);
cg_curve = zeros(1, Max_iter);

% 迭代优化
for t = 1:Max_iter
    % 轮盘赌选择
    sum_fitness = sum(fitness);
    if sum_fitness == 0
        continue;
    end
    Px = fitness / sum_fitness;
    PPx = cumsum(Px);
    SelCh = zeros(nPop, dim);
    for i = 1:nPop
        r = rand;
        for j = 1:nPop
            if r <= PPx(j)
                SelCh(i,:) = X(j,:);
                break;
            end
        end
    end
    
    % 均匀交叉操作
    for i = 1:2:nPop
        if rand < Pc
            posCut = floor(rand*(dim-1)) + 1;
            % 生成10维行向量掩码
            mask = rand(1, dim) < Pc; % 确保mask是1×dim的行向量
            SelCh(i,:) = SelCh(i,:) .* mask + SelCh(i+1,:) .* ~mask;
            SelCh(i+1,:) = SelCh(i+1,:) .* mask + SelCh(i,:) .* ~mask;
        end
    end
    
    % 高斯变异操作
    for i = 1:nPop
        for j = 1:dim
            if rand < Pm
                SelCh(i,j) = SelCh(i,j) + sigma * randn; % 高斯扰动[2](@ref)
                SelCh(i,j) = max(lb(j), min(ub(j), SelCh(i,j))); % 边界约束[4](@ref)
            end
        end
    end
    
    % 计算子代适应度
    fitness_new = zeros(nPop, 1);
    for i = 1:nPop
        fitness_new(i) = fobj(SelCh(i,:));
    end
    
    % 更新种群
    for i = 1:nPop
        if fitness_new(i) < fitness(i)
            X(i,:) = SelCh(i,:);
            fitness(i) = fitness_new(i);
            if fitness(i) < Best_score
                Best_score = fitness(i);
                Best_x = SelCh(i,:);
            end
        end
    end
    
    % 记录当前最优
    cg_curve(t) = Best_score;
end