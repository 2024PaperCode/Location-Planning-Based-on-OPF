clc;
clear;
nPop=30; 
Max_iter=500;
dim = 20; 
Function_name=12; 
[lb,ub,dim,fobj] = Get_Functions_cec2022(Function_name,dim);

Best_scores1 = [];
Best1 = inf;
Best_cg1 = [];

Best_scores2 = [];
Best2 = inf;
Best_cg2 = [];

Best_scores3 = [];
Best3 = inf;
Best_cg3 = [];

Best_scores4 = [];
Best4 = inf;
Best_cg4 = [];

Best_scores5 = [];
Best5 = inf;
Best_cg5 = [];


for i = 1 : 20
    [Best_score,Best_x,cg_curve]=PSO(nPop,Max_iter,lb,ub,dim,fobj);
    if Best_score < Best1
        Best1 = Best_score;
        Best_cg1 = cg_curve;
    end
    Best_scores1 = [Best_scores1; Best_score];
end

for i = 1 : 20
    [Best_score,Best_x,cg_curve]=GA(nPop,Max_iter,lb,ub,dim,fobj);
    if Best_score < Best2
        Best2 = Best_score;
        Best_cg2 = cg_curve;
    end
    Best_scores2 = [Best_scores2; Best_score];
end

for i = 1 : 20
    [Best_score,Best_x,cg_curve]=ACO(nPop,Max_iter,lb,ub,dim,fobj);
    if Best_score < Best3
        Best3 = Best_score;
        Best_cg3 = cg_curve;
    end
    Best_scores3 = [Best_scores3; Best_score];
end

for i = 1 : 20
    [Best_score,Best_x,cg_curve]=SA(1,Max_iter,lb,ub,dim,fobj);
    if Best_score < Best4
        Best4 = Best_score;
        Best_cg4 = cg_curve;
    end
    Best_scores4 = [Best_scores4; Best_score];
end

for i = 1 : 20
    [Best_score,Best_x,cg_curve]=SGA(nPop,Max_iter,lb,ub,dim,fobj);
    if Best_score < Best5
        Best5 = Best_score;
        Best_cg5 = cg_curve;
    end
    Best_scores5 = [Best_scores5; Best_score];
end

mean1 = mean(Best_scores1)
std1 = std(Best_scores1)
min(Best_scores1)

mean2 = mean(Best_scores2)
std2 = std(Best_scores2)
min(Best_scores2)

mean3 = mean(Best_scores3)
std3 = std(Best_scores3)
min(Best_scores3)

mean4 = mean(Best_scores4)
std4 = std(Best_scores4)
min(Best_scores4)

mean5 = mean(Best_scores5)
std5 = std(Best_scores5)
min(Best_scores5)


Best_cg1 = Best_cg1';
X1 = [1:1:size(Best_cg1)];

Best_cg2 = Best_cg2';
X2 = [1:1:size(Best_cg2)];

Best_cg3 = Best_cg3';
X3 = [1:1:size(Best_cg3)];

Best_cg4 = Best_cg4';
X4 = [1:1:size(Best_cg4)];

Best_cg5 = Best_cg5';
X5 = [1:1:size(Best_cg5)];

plot(X1,Best_cg1,'y-','Linewidth',2);
hold on;

plot(X2,Best_cg2,'g-','Linewidth',2);
hold on;

plot(X3,Best_cg3,'b-','Linewidth',2);
hold on;

plot(X4,Best_cg4,'c-','Linewidth',2);
hold on;

plot(X5,Best_cg5,'k-','Linewidth',2);
hold on;

title(['F' num2str(Function_name)])
xlabel('Iteration');
ylabel(['Best fitness']);
axis tight
grid on
box on
set(gcf,'Position',[400 200 400 250])
%legend(Optimal_results{1, :})
