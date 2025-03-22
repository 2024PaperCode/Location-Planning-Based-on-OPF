function [Best_score, Best_x, cg_curve] = PSO(nPop, Max_iter, lb, ub, dim, fobj)
% PSO 粒子群优化算法（MATLAB 实现）
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
w = 1;
c1 = 2;     % 个体学习因子
c2 = 2;     % 社会学习因子
Vmax = 0.5*(ub - lb); % 速度边界（根据问题调整）
Vmin = -Vmax;

% 初始化种群
X = lb + (ub - lb) .* rand(nPop, dim); % 位置初始化
V = Vmin + (Vmax - Vmin) .* rand(nPop, dim); % 速度初始化
fitness = zeros(nPop, 1);
for i = 1:nPop
    fitness(i) = fobj(X(i, :));
end

% 初始化个体最优和全局最优
pBest = X;
pBestFitness = fitness;
[Best_score, bestIndex] = min(fitness);
Best_x = X(bestIndex, :);
gBest = Best_x;
cg_curve = zeros(1, Max_iter);

% 迭代优化
for t = 1:Max_iter
    % 速度更新
    r1 = rand(nPop, dim);
    r2 = rand(nPop, dim);
    V = w * V + c1 * r1 .* (pBest - X) + c2 * r2 .* (gBest - X);
    V = max(V, Vmin); % 速度下限约束
    V = min(V, Vmax); % 速度上限约束
    
    % 位置更新
    X = X + V;
    X = max(X, lb); % 位置下限约束
    X = min(X, ub); % 位置上限约束
    
    % 适应度计算与极值更新
    for i = 1:nPop
        newFitness = fobj(X(i, :));
        if newFitness < pBestFitness(i)
            pBest(i, :) = X(i, :);
            pBestFitness(i) = newFitness;
            if newFitness < Best_score
                Best_score = newFitness;
                Best_x = X(i, :);
            end
        end
    end
    
    % 记录当前最优
    cg_curve(t) = Best_score;
end