function [Best_score, Best_x, cg_curve] = SA(nPop, Max_iter, lb, ub, dim, fobj)

% 参数设置
Max_iter = 500;      % 最大迭代次数
initial_temperature = 1000; % 初始温度
cooling_rate = 0.90;        % 降温系数
min_temperature = 1e-4;    % 最低温度
X = lb + (ub - lb) .* rand(nPop, dim); % 初始解 (随机生成在 [-5, 5] 范围内)
Best_x = X; % 最优解初始化
Best_score = fobj(X);
fitness = zeros(nPop, 1);
current_temperature = initial_temperature;
j = 1;

% 模拟退火过程
while current_temperature > min_temperature
    
    for iteration = 1:Max_iter
        % 1. 生成新解（在当前解附近随机生成）
        new_X = X + lb + (ub - lb) .* rand(nPop, dim).*rand();
    
        % 2. 计算目标函数值
        current_score = fobj(X);
        new_score = fobj(new_X);
        
        % 3. 接受新解的条件
        if new_score < current_score || rand < exp(-(new_score - current_score) / current_temperature)
            X = new_X; % 接受新解
        end
        
        % 4. 更新最优解
        if fobj(X) < fobj(Best_x)
            Best_x = X;
            Best_score = fobj(X);
        end
        
        % 5. 降低温度
    end
    current_temperature = current_temperature * cooling_rate;
    cg_curve(j) = Best_score;
    j = j + 1;
end

