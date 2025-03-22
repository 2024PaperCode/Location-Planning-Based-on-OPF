clc
plotBox()
function [] = plotits()
    [its1]= xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata4\case33bw_0%_its.xlsx');
    [its2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata4\case33bw_0%_its.xlsx');
    [its3] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_its.xlsx');
    X = [1:1:100]';
    hold on
    plot(X,its1,X,its2,X,its3)
    legend('Only deploy SOP','Only deploy RPFC','Collaborative deployment')
    xlabel('iterations')
    ylabel('minCost/$')
end

function [] = plotPQlm()

    X = 1:1:64;
    Y = 1:1:20;
    Y = Y';
    V = [];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm2_case33bw0.xlsx');
    Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm2_case33bw.xlsx');
    Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm2_case33bw2.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Plm2_case33bw3.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];


    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm2_case33bw0.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm2_case33bw.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm2_case33bw2.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2]
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Plm2_case33bw3.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];


    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm2_case33bw0.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm2_case33bw.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm2_case33bw2.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Plm2_case33bw3.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm2_case33bw0.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm2_case33bw.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm2_case33bw2.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Plm2_case33bw3.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm2_case33bw0.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm2_case33bw.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm2_case33bw2.xlsx');
        Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Plm2_case33bw3.xlsx');
    Vt1 = Vt1(:,1)+Vt1(:,2);
    Vt1 = Vt1(1:32);
    Vt2 = Vt2(:, 1)+Vt2(:,2);
    Vt2 = Vt2(1:32);
    Vt = [Vt1;Vt2];
    V = [V,Vt]';


    pcolor(X,Y,V)
    loca = {'Str1\_1', 'Str1\_2','Str1\_3','Str1\_4','Str1\_5','Str1\_6','Str1\_7','Str1\_8','Str1\_9','Str1\_10','Str1\_11','Str1\_12', 'Str1\_13' ,'Str1\_14','Str1\_15', 'Str1\_16','Str1\_17','Str1\_18', 'Str1\_19', ' Str1\_20'}
    set(gca, 'YTick', 1:20)
    set(gca,'YTickLabel',loca);
    set(gca,'linewidth', 1.5)
    shading interp
    h = colorbar
    set(gca,'linewidth', 1.5)
    set(get(h,'Title'),'String', 'MW')
end

function [] = plotCostbar3()
    
    gencost = [];
    losscost = [];
    sopcost = [];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];




    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];




    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)]; 



    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];



    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    data = [sopcost' losscost']

    b = bar3(data,0.7);
    colorbar
    caxis([0,10]);

    for k = 1 : length(b)
        zdata = b(k).ZData;
        b(k).CData = zdata;
        b(k).FaceColor = 'interp';
    end

    hXLabel = xlabel('1:device cost;  2:loss cost', 'Rotation',10);
    hYLabel = ylabel('case x', 'Rotation',-18, "Position",[0 13 -1]);
    
    hZLabel = zlabel('cost/$')
        box on
end

function [] = plotnewCost()
    gencost = [];
    losscost = [];
    sopcost = [];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_losscost.xlsx')
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata0\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata0\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata0\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];



    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata1\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata1\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata1\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata1\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];



    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata2\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata2\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata2\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata2\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];



    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata3\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata3\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata3\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata3\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];



    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata4\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_SOP\OPFdata4\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\only_RPFC\OPFdata4\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)];
    sopcost = [sopcost, c(2)];
    gencost = [gencost, c(3)-c(2)-c(1)];

    [c] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_losscost.xlsx');
    losscost = [losscost, c(1)]';
    sopcost = [sopcost, c(2)]';
    gencost = [gencost, c(3)-c(2)-c(1)]';


    data = [losscost ,sopcost];
    X = 1:1:20;

    b = bar(X,data,0.4,'stacked')
    loca = {'Str2\_1', 'Str2\_2','Str2\_3','Str2\_4','Str2\_5','Str2\_6','Str2\_7','Str2\_8','Str2\_9','Str2\_10','Str2\_11','Str2\_12', 'Str2\_13' ,'Str2\_14','Str2\_15', 'Str2\_16','Str2\_17','Str2\_18', 'Str2\_19', ' Str2\_20'}
    set(gca, 'XTick', 1:20)
    set(gca,'XTickLabel',loca, 'XTickLabelRotation', 55);
    legend(b,'loss cost','device cost', 'Location', 'southoutside', 'Orientation','horizontal');
    ylim([0 30])
    grid on;
end

function [] = plotnewPQlm()
    X = 1:1:280;
    Y = 1:1:20;
    Y = Y';
    B = [];
    num = 15;
    num2 = 17;

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)] + [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata0\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata0\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata0\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata0\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata0\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata0\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];


    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata1\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata1\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata1\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata1\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata1\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata1\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata1\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata1\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata2\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata2\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata2\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata2\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata2\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata2\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

   
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata3\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata3\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata3\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata3\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata3\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata3\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata3\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata3\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata4\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata4\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata4\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata4\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata4\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata4\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_branch1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_branch1.xlsx');
    B1 = [B1(:,num);B2(:,num)]+ [B1(:,num2);B2(:,num2)];
    B = -[B,B1]';

    pcolor(X,Y,B)
    shading interp
    h = colorbar
    loca = {'Str2\_1', 'Str2\_2','Str2\_3','Str2\_4','Str2\_5','Str2\_6','Str2\_7','Str2\_8','Str2\_9','Str2\_10','Str2\_11','Str2\_12', 'Str2\_13' ,'Str2\_14','Str2\_15', 'Str2\_16','Str2\_17','Str2\_18', 'Str2\_19', ' Str2\_20'}
    set(gca, 'YTick', 1:20)
    set(gca, 'YTick', 1:20)
    set(gca,'YTickLabel',loca);
    set(gca,'linewidth', 1.5)
    set(get(h,'Title'),'String', 'MVar')
    xticks(0:25:280);
end

function [] = plotnewPQVbus()
    X = 1:1:282;
    Y = 1:1:20;
    Y = Y';
    B = [];
    V = 8;
    P = 3;
    Q = 4;
    num = V;

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata0\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata0\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata0\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata0\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata0\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata0\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];


    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata1\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata1\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata1\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata1\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata1\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata1\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata1\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata1\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata0\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata2\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata2\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata2\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata2\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata2\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata2\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

   
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata3\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata3\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata3\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata3\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata3\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata3\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata3\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata3\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata4\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\no_deploy\OPFdata4\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata4\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_sop\OPFdata4\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];

    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata4\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\only_rpfc\OPFdata4\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];
    B = [B,B1];
    
    [B1] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_bus1.xlsx');
    [B2] = xlsread('C:\Users\Qiu\Desktop\case141data\both_sop_rpfc\OPFdata4\case33bw_0%_bus2.xlsx');
    B1 = [B1(:,num);B2(:,num)];

    pcolor(X,Y,B)
    shading interp
    h = colorbar
    loca = {'Str2\_1', 'Str2\_2','Str2\_3','Str2\_4','Str2\_5','Str2\_6','Str2\_7','Str2\_8','Str2\_9','Str2\_10','Str2\_11','Str2\_12', 'Str2\_13' ,'Str2\_14','Str2\_15', 'Str2\_16','Str2\_17','Str2\_18', 'Str2\_19', ' Str2\_20'}
    set(gca, 'YTick', 1:20)
    set(gca,'YTickLabel',loca);
    set(gca,'linewidth', 1.5)
    set(get(h,'Title'),'String', 'p.u.')
    xticks(0:25:280);
end

function [] = plotCost()
    
    gencost = [];
    losscost = [];
    sopcost = [];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];




    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];




    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)]; 



    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];



    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw0.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw0.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];

    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw2.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw2.xlsx');
    losscost = [losscost, cost2(2)];
    sopcost = [sopcost, cost2(3)];
    gencost = [gencost, cost1(100)-sum(cost2)];


    [cost1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\its_case33bw3.xlsx');
    [cost2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\cost_case33bw3.xlsx');
    losscost = [losscost, cost2(2)]';
    sopcost = [sopcost, cost2(3)]';
    gencost = [gencost, cost1(100)-sum(cost2)]';

    data = [gencost,losscost ,sopcost];
    X = 1:1:20
    
    %rectangle('Position',[0.03 0.03 4.5 12], 'FaceColor',[0.7 0.9 1], 'EdgeColor','none');
    %hold on;
    %rectangle('Position',[4.5 0.03 4 12], 'FaceColor',[0.8 0.8 0.1], 'EdgeColor','none');
    %hold on;
    %rectangle('Position',[8.5 0.03 4 12], 'FaceColor',[0.7 0.9 1], 'EdgeColor','none');
    %hold on;
    %rectangle('Position',[12.5 0.03 4 12], 'FaceColor',[0.8 0.8 0.1], 'EdgeColor','none');
    %hold on;
    %rectangle('Position',[16.5 0.03 4.5 12], 'FaceColor',[0.7 0.9 1], 'EdgeColor','none');
    %hold on;

    %绘制第一块区域
    %area([0 4],[0 12],'LineStyle',':','FaceColor',[178 233 202]./255,'EdgeColor','none')

    

    b = bar(X,data,0.4,'stacked')
    loca = {'Str1\_1', 'Str1\_2','Str1\_3','Str1\_4','Str1\_5','Str1\_6','Str1\_7','Str1\_8','Str1\_9','Str1\_10','Str1\_11','Str1\_12', 'Str1\_13' ,'Str1\_14','Str1\_15', 'Str1\_16','Str1\_17','Str1\_18', 'Str1\_19', ' Str1\_20'}
    set(gca, 'XTick', 1:20)
    set(gca,'XTickLabel',loca, 'XTickLabelRotation', 55);
    legend(b,'loss cost','device cost', 'Location', 'southoutside', 'Orientation','horizontal');
    ylim([120 170])
    grid on;

    


end

function [] = plotV()

    X = 1:1:66;
    Y = 1:1:20;
    Y = Y';
    V = [];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk2_case33bw0.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk2_case33bw.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk2_case33bw2.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Vmk2_case33bw3.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];


    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk2_case33bw0.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk2_case33bw.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk2_case33bw2.xlsx');
    Vt = [Vt1;Vt2]
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Vmk2_case33bw3.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];


    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk2_case33bw0.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk2_case33bw.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk2_case33bw2.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Vmk2_case33bw3.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk2_case33bw0.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk2_case33bw.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk2_case33bw2.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Vmk2_case33bw3.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk1_case33bw0.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk2_case33bw0.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk1_case33bw.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk2_case33bw.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk1_case33bw2.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk2_case33bw2.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt];

    [Vt1] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk1_case33bw3.xlsx');
    [Vt2] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Vmk2_case33bw3.xlsx');
    Vt = [Vt1;Vt2];
    V = [V,Vt]';

    V = sqrt(V);
   pcolor(X,Y,V)
    shading interp
    h = colorbar
    loca = {'Str1\_1', 'Str1\_2','Str1\_3','Str1\_4','Str1\_5','Str1\_6','Str1\_7','Str1\_8','Str1\_9','Str1\_10','Str1\_11','Str1\_12', 'Str1\_13' ,'Str1\_14','Str1\_15', 'Str1\_16','Str1\_17','Str1\_18', 'Str1\_19', ' Str1\_20'}
    set(gca, 'YTick', 1:20)
    set(gca,'YTickLabel',loca);
    set(gca,'linewidth', 1.5)
    set(get(h,'Title'),'String', 'p.u.')
    xticks(0:5:66);
end

function [] = plotPsotbar3()
    X = 1:1:15;
    Y = 1:1:5;
    Y = Y';
    V = [];


    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Qso_case33bw.xlsx');
    Vt = [Vt(:, 2)', 0, 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Qso_case33bw2.xlsx');
        Vt = [Vt(:, 2)', 0, 0, 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata0\Qso_case33bw3.xlsx');
        Vt = [Vt(:, 2)', 0];
    V = [V;Vt];


    
    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Qso_case33bw.xlsx');
        Vt = [Vt(:, 2)', 0,0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Qso_case33bw2.xlsx');
        Vt = [Vt(:, 2)', 0,0,0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata1\Qso_case33bw3.xlsx');
        Vt = Vt(:, 2)';
    V = [V;Vt];
    

    
    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Qso_case33bw.xlsx');
        Vt = [Vt(:, 2)', 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Qso_case33bw2.xlsx');
        Vt = [Vt(:, 2)', 0, 0, 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata2\Qso_case33bw3.xlsx');
        Vt = [Vt(:, 2)', 0];
    V = [V;Vt];
    


    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Qso_case33bw.xlsx');
        Vt = [Vt(:, 2)', 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Qso_case33bw2.xlsx');
        Vt = [Vt(:, 2)', 0, 0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata3\Qso_case33bw3.xlsx');
        Vt = [Vt(:, 2)', 0, 0];
    V = [V;Vt];




    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Qso_case33bw.xlsx');
        Vt = [Vt(:, 2)', 0,0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Qso_case33bw2.xlsx');
        Vt = [Vt(:, 2)', 0,0];
    V = [V;Vt];

    [Vt] = xlsread('C:\Users\Qiu\Desktop\OPFdata4\Qso_case33bw3.xlsx');
        Vt = [Vt(:, 2)',0,0];
    V = [V;Vt]';


    surf(X, Y, V);

    for k = 1 : length(b)
        zdata = b(k).ZData;
        b(k).CData = zdata;
        b(k).FaceColor = 'interp';
    end

    %hXLabel = xlabel('1:device cost;  2:loss cost', 'Rotation',10);
    %hYLabel = ylabel('case x', 'Rotation',-18, "Position",[0 13 -1]);
    hZLabel = zlabel('Q/p.u.')

    locaY = { 'case2','case3','case4','case6','case7','case8','case10','case11','case12' ,'case14','case15', 'case16','case18', 'case19', ' case20'}
    set(gca, 'YTick', 1:15)
    set(gca,'YTickLabel',locaY, 'YTickLabelRotation', 50);
    
    locaX = {'device1', 'device2', 'device3', 'device4', 'device5'}
    set(gca, 'XTick', 1:15)
    set(gca,'XTickLabel',locaX, 'XTickLabelRotation', 46);
    
    box on
end

function [] = plotVRate()
    V = [    
    0.5957
    0.6496
    0.6312
    0.6222
    0.6809
    0.7009
    0.7209
    0.7009
    0.5957
    0.8511
    0.7979
    0.7837
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000
    1.0000]

    X = 1:1:20;
    fill([0,21,21,0],[0.5,0.5,1,1],[0.93232 0.96470 0.93725],"Facealpha",0.7,"EdgeColor","none")%填充底色
    hold on;
    for i = 0:3
        b = bar(1+i, V(1+i), 0.4);
        set(b(1),'facecolor',[0.36,0.62,0.68]);
        hold on;

        b = bar(5+i, V(5+i), 0.4);
        set(b(1),'facecolor',[0.82,0.80,0.63]);
        hold on;

        b = bar(9+i, V(9+i), 0.4);
        set(b(1),'facecolor',[0.81,0.75,0.75]);
        hold on;

        b = bar(13+i, V(13+i), 0.4);
        set(b(1),'facecolor',[0.93,0.69,0.51]);
        hold on;

        b = bar(17+i, V(17+i), 0.4);
        set(b(1),'facecolor',[0.94,0.44,0.42]);
        hold on;
    end

    %b = bar(X,V,0.4);
    loca = {'Str2\_1', 'Str2\_2','Str2\_3','Str2\_4','Str2\_5','Str2\_6','Str2\_7','Str2\_8','Str2\_9','Str2\_10','Str2\_11','Str2\_12', 'Str2\_13' ,'Str2\_14','Str2\_15', 'Str2\_16','Str2\_17','Str2\_18', 'Str2\_19', ' Str2\_20'}
    set(gca, 'XTick', 1:20)
    set(gca,'XTickLabel',loca);
    ylim([0.5 1])

end

function [] = plotBox()


% 五种算法相对成本，20次独立迭代
data1 = [     0.9754    0.9750    0.9802    0.9762    0.9716
    0.9810    0.9772    0.9777    0.9776    0.9706
    0.9798    0.9779    0.9793    0.9771    0.9723
    0.9801    0.9771    0.9771    0.9771    0.9724
    0.9795    0.9756    0.9789    0.9762    0.9708
    0.9785    0.9781    0.9803    0.9784    0.9720
    0.9771    0.9749    0.9807    0.9770    0.9740
    0.9795    0.9762    0.9788    0.9764    0.9719
    0.9755    0.9781    0.9779    0.9758    0.9728
    0.9757    0.9750    0.9795    0.9770    0.9716
    0.9748    0.9749    0.9807    0.9782    0.9700
    0.9818    0.9780    0.9789    0.9797    0.9711
    0.9818    0.9741    0.9809    0.9759    0.9732
    0.9756    0.9751    0.9775    0.9798    0.9713
    0.9781    0.9765    0.9771    0.9763    0.9702
    0.9795    0.9747    0.9780    0.9795    0.9720
    0.9768    0.9767    0.9784    0.9794    0.9714
    0.9802    0.9774    0.9785    0.9799    0.9730
    0.9788    0.9761    0.9780    0.9764    0.9721
    0.9778    0.9767    0.9797    0.9780    0.9732];
data2 = [    0.9839    0.9844    0.9853    0.9844    0.9782
    0.9822    0.9816    0.9863    0.9827    0.9735
    0.9846    0.9774    0.9828    0.9795    0.9731
    0.9787    0.9776    0.9854    0.9822    0.9745
    0.9822    0.9836    0.9828    0.9824    0.9760
    0.9802    0.9808    0.9863    0.9864    0.9758
    0.9838    0.9802    0.9855    0.9852    0.9778
    0.9795    0.9835    0.9838    0.9861    0.9758
    0.9812    0.9801    0.9852    0.9837    0.9752
    0.9809    0.9814    0.9841    0.9814    0.9758
    0.9838    0.9828    0.9855    0.9859    0.9768
    0.9828    0.9841    0.9835    0.9820    0.9729
    0.9796    0.9798    0.9823    0.9799    0.9773
    0.9804    0.9824    0.9846    0.9813    0.9736
    0.9791    0.9849    0.9860    0.9839    0.9755
    0.9827    0.9778    0.9828    0.9827    0.9743
    0.9821    0.9818    0.9839    0.9844    0.9749
    0.9794    0.9805    0.9852    0.9864    0.9765
    0.9792    0.9796    0.9821    0.9861    0.9738
    0.9814    0.9793    0.9861    0.9825    0.9744];



% 定义箱线图的颜色
boxColors = 'kkkkk';

% 定义组别标签
groupLabels = {'PSO','GA','ACO','SA','BS-SGA'};

% 绘制箱线图，并设置颜色和标签
boxplot(data1, 'Color', boxColors, 'Labels', groupLabels);

% 添加标题和轴标签
title('定制箱线图示例');
xlabel('数据组别');
ylabel('数值');
end
