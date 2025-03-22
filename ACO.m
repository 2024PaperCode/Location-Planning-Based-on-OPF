function [Best_score, Best_x, cg_curve] = ACO(nPop, Max_iter, lb, ub, dim, fobj)
    % 参数设置
    k = nPop;               % 存档大小
    q = 0.2;                % 选择压力参数
    xi = 0.85;              % 标准差缩放因子
    
    % 初始化种群
    X = repmat(lb, nPop, 1) + repmat((ub-lb), nPop, 1) .* rand(nPop, dim);
    
    % 计算初始适应度
    Fitness = zeros(nPop, 1);
    for i = 1:nPop
        Fitness(i) = fobj(X(i, :));
    end
    % 初始化存档
    [SortedFitness, SortIndex] = sort(Fitness);
    Archive = X(SortIndex, :);
    SortedFitness = SortedFitness(1:k);
    
    % 主循环
    for iter = 1:Max_iter
        % 生成新解
        NewX = zeros(nPop, dim);
        for i = 1:nPop
            % 计算权重（基于高斯分布）
            weights = arrayfun(@(j) (1/(q*k*sqrt(2*pi))) * exp(-(j-1)^2/(2*q^2*k^2)), 1:k)';
            weights = weights / sum(weights);
            
            % 计算各维度的均值和标准差
            mu = sum(Archive(1:k, :) .* weights, 1);
            sigma = xi * sum(abs(Archive(1:k, :) - mu)) .* weights / sum(weights);
            
            % 生成新解并处理边界
            new_sol = mu + sigma .* randn(1, dim);
            new_sol = max(min(new_sol, ub), lb);
            NewX(i, :) = new_sol(i,:);
        end
        
        % 计算新解适应度
        NewFitness = zeros(nPop, 1);
        for i = 1:nPop
            NewFitness(i) = fobj(NewX(i, :));
        end
        
        % 更新存档
        CombinedArchive = [Archive; NewX];
        CombinedFitness = [SortedFitness; NewFitness];
        [CombinedFitness, SortIndex] = sort(CombinedFitness);
        Archive = CombinedArchive(SortIndex(1:k), :);
        SortedFitness = CombinedFitness(1:k);
        cg_curve(iter) = SortedFitness(1);
    end
    
    % 输出结果
    BestSolution = Archive(1, :);
    BestFitness = SortedFitness(1);
    Best_score = BestFitness;
    Best_x = BestSolution;
end