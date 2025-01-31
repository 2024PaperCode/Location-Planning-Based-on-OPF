clc;
popSize = 4;
T = 100;
dim = 5 + 6*10+15*5;
X = rand(popSize,dim) .* 10 - 5;
V = rand(popSize, dim) .* 0.2 - 0.1;
Xbest = rand(1, dim);
FitVal = randi([100000, 1000000], popSize, 1);
bestFitVal = 10000000;
up = 5;
down = -5;
its = [];


gv = [1,4];
nsop = 0;
for i = 1 : T
    flag = 0;
    remapX = zeros(popSize, dim);
    while ~flag
        xita = pi * 2 * rand();
        [V] = updateV(popSize,dim, X, Xbest, V, i, T, xita,up,down);
        if xita < pi
            [X] = updataFirstStage(popSize, dim, X, Xbest ,V, FitVal);
        else
            [X] = updateSecondStage(popSize, dim, X, Xbest);
        end
        [X] = BoundX(popSize, dim, X, up, down);
        remapX = remap(popSize, dim, X);
        [flag] = checkUnique(popSize,remapX,gv);
    end
    [FitVal, bestFitVal] = updateFitVal(popSize, remapX, X,FitVal, bestFitVal);
    [X, FitVal, Xbest, bestFitVal] = mysort(X, FitVal, Xbest, bestFitVal);
    i
    its = [its; bestFitVal]
    writematrix(value(its), 'C:\Users\Qiu\Desktop\OPFdata0new\its_case33bw3.xlsx');
end




function [P] = remap(popSize, dim, X)
    P = zeros(popSize, dim);
    for i = 1 : popSize
        for j = 1 : dim
            s = 1.0 / (1 + exp(-X(i,j)));
            if rand() <= s
                P(i,j) = 1;
            else
                P(i,j) = 0;
            end
        end
    end
end


function [flag] = checkUnique(popSize, X,gv)
    flag = 1; 
    for i = 1 : popSize
        s = 0;
        for k = 1 : 5
            s = s + X(i,k);
        end
        if s == 0
            flag = 0;
            return;
        end
        [nsop,fr,to,Cso] = pre_work(X(i,:));
        if length(unique([fr,gv])) + length(unique([to,gv]))< numel([fr,gv])+numel([to,gv])
            flag = 0;
            return;
        end
    end
end



function [X] = BoundX(popSize, dim, X, up, down)
    for i = 1 : popSize
        for j = 1 : dim
            if X(i, j) > up
                X(i, j) = rand() * up;
            elseif X(i, j) < down
                X(i,j) = rand() * down;
            end
        end
    end
end




function [V] = updateV(popSize, dim, X, Xbest, V, t, T, xita, up, down)
    c = (4.0 * t)/(T * exp(4.0 * t / T));
    for i = 1:popSize
        a = Xbest - X(i,:) - (1.29.*V(i,:).^2*sin(xita).*0.01)./2;
        for j = 1 : dim
            if a(j) > up / 10
                a(j) = up / 10;
            elseif a(j) < down / 10
                a(j) = down / 10;
            end
        end
        V(i,:) = c .* V(i,:) + a;
    end
end


function [X] = updataFirstStage(popSize, dim, X, Xbest ,V, FitVal)
    Xc = zeros(1,dim);
    for j = 1 : dim
        tmp = 0;
        for i = 1 : popSize
            Xc(1, j) = Xc(1, j) + X(i,j)*FitVal(i,1);
            tmp = tmp + FitVal(i,1);
        end
        Xc(1,j) = Xc(1,j) ./ (tmp * popSize);
    end
    
    b = rand()*4-2;
    d = rand()*3-1.5;
    e = rand()*2-1;
    
    for i = 1 : popSize
        if i <= popSize * 0.2
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) + V(i,:);
        elseif i >= popSize * 0.8
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) - d * (Xc - X(i,:)) + V(i,:);
        else
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) + d * (Xc - X(i,:)) - e * (X(popSize, :) + X(i, :)) + V(i,:);
        end
    end
end

function [d] = brwon(dim)
        d = 0.0;
        for i = 1:dim
            d = d + randn();
        end
        d = d * sqrt(1.0 / dim);
end


function [X] = updateSecondStage(popSize, dim, X, Xbest)
    d = brwon(dim);
    for i = 1 : popSize
        for j = 1 : dim
            r = rand();
            if r >= 0.5
                X(i,j) = X(i,j) + (X(i,j) - Xbest(j))*r;
            else
                X(i,j) = X(i,j) + (X(i,j) - Xbest(j))*r*d;
            end
        end
    end
end



function [Xtmp, FitVal, Xbest, bestFitVal] = mysort(X, FitVal, Xbest, bestFitVal)
    Xtmp = sortrows([FitVal, X]);
    FitVal = Xtmp(:,1);
    Xtmp(:,1) = [];
end

function [FitVal, bestFitVal] = updateFitVal(popSize, remapX, X,FitVal, bestFitVal)
    for i = 1 : popSize
        [W1, P1, Q1,Plm1, Qlm1, Vk1, alpha1, W2, P2, Q2,Plm2, Qlm2,Vk2, alpha2,Pso,Qso, ret , ftc, cost, nsop] = myOPF(remapX(i,:));
        FitVal(i,1) = ret;


        if bestFitVal > ret
            Xbest = X(i,:);
            bestFitVal = ret;
            writematrix(value(W1), 'C:\Users\Qiu\Desktop\OPFdata0new\W1_case33bw3.xlsx');
            writematrix(value(alpha1), 'C:\Users\Qiu\Desktop\OPFdata0new\alpha1_case33bw3.xlsx');
            writematrix(value(P1), 'C:\Users\Qiu\Desktop\OPFdata0new\P1_case33bw3.xlsx'); 
            writematrix(value(Q1), 'C:\Users\Qiu\Desktop\OPFdata0new\Q1_case33bw3.xlsx');  
            writematrix(value(Vk1), 'C:\Users\Qiu\Desktop\OPFdata0new\Vmk1_case33bw3.xlsx'); 
            writematrix(value(Plm1), 'C:\Users\Qiu\Desktop\OPFdata0new\Plm1_case33bw3.xlsx');
            writematrix(value(Qlm1), 'C:\Users\Qiu\Desktop\OPFdata0new\Qlm1_case33bw3.xlsx');

            writematrix(value(W2), 'C:\Users\Qiu\Desktop\OPFdata0new\W2_case33bw3.xlsx');
            writematrix(value(alpha2), 'C:\Users\Qiu\Desktop\OPFdata0new\alpha2_case33bw3.xlsx');
            writematrix(value(P2), 'C:\Users\Qiu\Desktop\OPFdata0new\P2_case33bw3.xlsx');
            writematrix(value(Q2), 'C:\Users\Qiu\Desktop\OPFdata0new\Q2_case33bw3.xlsx');  
            writematrix(value(Vk2), 'C:\Users\Qiu\Desktop\OPFdata0new\Vmk2_case33bw3.xlsx'); 
            writematrix(value(Plm2), 'C:\Users\Qiu\Desktop\OPFdata0new\Plm2_case33bw3.xlsx');
            writematrix(value(Qlm2), 'C:\Users\Qiu\Desktop\OPFdata0new\Qlm2_case33bw3.xlsx');

            writematrix(value(Pso), 'C:\Users\Qiu\Desktop\OPFdata0new\Pso_case33bw3.xlsx'); 
            writematrix(value(Qso), 'C:\Users\Qiu\Desktop\OPFdata0new\Qso_case33bw3.xlsx'); 
            writematrix(value(ftc), 'C:\Users\Qiu\Desktop\OPFdata0new\SOP_case33bw3.xlsx');
            writematrix(value(cost), 'C:\Users\Qiu\Desktop\OPFdata0new\cost_case33bw3.xlsx');
            writematrix([nsop], 'C:\Users\Qiu\Desktop\OPFdata0new\nso_case33bw3.xlsx');
        end
    end
end


function [nsop,fr,to,Cso] = pre_work(X)
    nsop = 0;
    fr = zeros(nsop);
    to = zeros(nsop);
    Cso = zeros(nsop);
    for i = 1:5
        nsop = nsop + X(i);
    end


    m = 1;n = 1;o = 1;
    
    for i = 1 : 5
        if X(i) == 1
            fr(m) = GetNum(X, 6+(i-1)*(6+6+15), 6+(i-1)*(6+6+15)+5,[5,1]);
            to(n) = GetNum(X, 6+(i-1)*(6+6+15)+6, 6+(i-1)*(6+6+15)+6+5,[5,1]);
            Cso(o) = GetNum(X, 6+(i-1)*(6+6+15)+6+6, 6+(i-1)*(6+6+15)+6+6+14, [6,5,2,1,1])/1000;
            m = m+1;
            n = n+1;
            o = o + 1;
        end
    end
end

function [res] = GetNum(X, l, r, spt)
    res = 1;
    j = 1;
    pw = spt(j) - 1;
    for i = l:r
        res = res + X(i)*2^pw;
        pw = pw - 1;
        if pw == -1 & i ~= r
            j = j+1;
            pw = spt(j) - 1;
        end
    end
end



function [W1, P1, Q1,Plm1, Qlm1, Vk1, alpha1, W2, P2, Q2,Plm2, Qlm2,Vk2, alpha2,Pso,Qso, ret , ftc, cost, nsop] = myOPF(X)
    mpc1 = loadcase('case33bw.m');
    [baseMVA1, bus1, gen1, branch1, gencost1, nl1, ns1, ng1] = deal(mpc1.baseMVA, mpc1.bus, mpc1.gen, mpc1.branch, mpc1.gencost, size(mpc1.branch, 1),  size(mpc1.bus, 1), size(mpc1.gen, 1));
    [Ybus1, Yf1, Yt1] = makeYbus(baseMVA1, bus1, branch1);
    mpc2 = loadcase('case33bw.m');
    [baseMVA2, bus2, gen2, branch2, gencost2, nl2, ns2, ng2] = deal(mpc2.baseMVA, mpc2.bus, mpc2.gen, mpc2.branch, mpc2.gencost, size(mpc2.branch, 1),  size(mpc2.bus, 1), size(mpc2.gen, 1));
    [Ybus2, Yf2, Yt2] = makeYbus(baseMVA2, bus2, branch2);
    
    nv = 0;
    busPv = [];
    Pv = []; % pvmax   pvmin   有名值MV
    Pvcost = [];
    [n,fr,to,Cso] = pre_work(X);
    nsop = n;
    nrpfc = n - nsop;

    W1 = sdpvar(2*ns1, 2*ns1,'symmetric');
    W2 = sdpvar(2*ns2, 2*ns2,'symmetric');
    alpha1 = sdpvar(ng1+nv,1);
    alpha2 = sdpvar(ng2+nv,1);
    Pso = sdpvar(n,2);
    Qso = sdpvar(n,2);
    
    Pmin_cons1 = [];
    Qmin_cons1 = [];
    Pmax_cons1 = [];
    Qmax_cons1 = [];
    Vmax_cons1 = [];
    Vmin_cons1 = [];
    Pd_cons1 = [];
    Qd_cons1 = [];
    Plm_cons1 = zeros(ns1);
    Slm_cons1 = zeros(ns1);
    
    Pmin_cons2 = [];
    Qmin_cons2 = [];
    Pmax_cons2 = [];
    Qmax_cons2 = [];
    Vmax_cons2 = [];
    Vmin_cons2 = [];
    Pd_cons2 = [];
    Qd_cons2 = [];
    Plm_cons2 = zeros(ns2);
    Slm_cons2 = zeros(ns2);
    
    e1 = eye(ns1);
    e2 = eye(ns2);
    
    P1 = [];
    Q1 = [];
    Plm1 = [];
    Qlm1= [];
    Vk1 = [];
    
    P2 = [];
    Q2 = [];
    Plm2 = [];
    Qlm2= [];
    Vk2 = [];
    
    Cpv = 0;
    Closs = 25*baseMVA1;
    
    for i = 1:ns1
        yktmp = e1(:, i)*(e1(:, i))'*Ybus1;
        P1 = [P1;trace(0.5.*[real(yktmp + yktmp.'),  imag(yktmp.' - yktmp); imag(yktmp - yktmp.'), real(yktmp + yktmp.')] * W1)];
        Q1 = [Q1;trace(-0.5.*[imag(yktmp + yktmp.'), real(yktmp - yktmp.'); real(yktmp.' - yktmp), imag(yktmp + yktmp.')] * W1)];
        Vk1 = [Vk1;trace([e1(:, i)*(e1(:,i)'), zeros(ns1); zeros(ns1), e1(:, i)*(e1(:,i)')] * W1)];
    
        Pmin_cons1 = [Pmin_cons1;0];
        Pmax_cons1 = [Pmax_cons1;0];
        Qmin_cons1 = [Qmin_cons1;0];
        Qmax_cons1 = [Qmax_cons1;0];
        Vmin_cons1 = [Vmin_cons1;bus1(i,13)];
        Vmax_cons1 = [Vmax_cons1;bus1(i,12)];
    
        Pd_cons1 = [Pd_cons1;bus1(i,3)];
        Qd_cons1 = [Qd_cons1; bus1(i,4)];
    end
    
    for i = 1:ns2
        yktmp = e2(:, i)*(e2(:, i))'*Ybus2;
        P2 = [P2;trace(0.5.*[real(yktmp + yktmp.'),  imag(yktmp.' - yktmp); imag(yktmp - yktmp.'), real(yktmp + yktmp.')] * W2)];
        Q2 = [Q2;trace(-0.5.*[imag(yktmp + yktmp.'), real(yktmp - yktmp.'); real(yktmp.' - yktmp), imag(yktmp + yktmp.')] * W2)];
        Vk2 = [Vk2;trace([e2(:, i)*(e2(:,i)'), zeros(ns2); zeros(ns2), e2(:, i)*(e2(:,i)')] * W2)];
    
        Pmin_cons2 = [Pmin_cons2;0];
        Pmax_cons2 = [Pmax_cons2;0];
        Qmin_cons2 = [Qmin_cons2;0];
        Qmax_cons2 = [Qmax_cons2;0];
        Vmin_cons2 = [Vmin_cons2;bus2(i,13)];
        Vmax_cons2 = [Vmax_cons2;bus2(i,12)];
    
        Pd_cons2 = [Pd_cons2;bus2(i,3)];
        Qd_cons2 = [Qd_cons2; bus2(i,4)];
    end
    
    
    for i = 1:nv
        Pmax_cons1(busPv(i,1), 1) = Pmax_cons1(busPv(i,1), 1) + Pv(i, 1);
        Pmin_cons1(busPv(i,1), 1) = Pmin_cons1(busPv(i,1), 1) + Pv(i, 2);
        Pmax_cons2(busPv(i,1), 1) = Pmax_cons2(busPv(i,1), 1) + Pv(i, 1);
        Pmin_cons2(busPv(i,1), 1) = Pmin_cons2(busPv(i,1), 1) + Pv(i, 2);
    end
    
    
    for i = 1:ng1
        Qmax_cons1(gen1(i,1),1) = Qmax_cons1(gen1(i,1),1) + gen1(i,4);
        Qmin_cons1(gen1(i,1),1) = Qmin_cons1(gen1(i,1),1) + gen1(i,5);
        Pmax_cons1(gen1(i,1),1) = Pmax_cons1(gen1(i,1),1) + gen1(i,9);
        Pmin_cons1(gen1(i,1),1) = Pmin_cons1(gen1(i,1),1) + gen1(i,10);
    end
    
    for i = 1:ng2
        Qmax_cons2(gen2(i,1),1) = Qmax_cons2(gen2(i,1),1) + gen2(i,4);
        Qmin_cons2(gen2(i,1),1) = Qmin_cons2(gen2(i,1),1) + gen2(i,5);
        Pmax_cons2(gen2(i,1),1) = Pmax_cons2(gen2(i,1),1) + gen2(i,9);
        Pmin_cons2(gen2(i,1),1) = Pmin_cons2(gen2(i,1),1) + gen2(i,10);
    end
    
    for i = 1:nl1
        p = branch1(i,1);
        q = branch1(i,2);
        yltmp = Ybus1(p,q).*(e1(:, p)*(e1(:, p)')-e1(:, p)*(e1(:, q)'));
        Plm1 = [Plm1; trace(0.5.*[real(yltmp + yltmp.'), imag(yltmp.' - yltmp); imag(yltmp - yltmp.'), real(yltmp + yltmp.')] * W1)];
        Qlm1 = [Qlm1; trace(-0.5.*[imag(yltmp + yltmp.'), real(yltmp - yltmp.'); real(yltmp.' - yltmp), imag(yltmp + yltmp.')] * W1)];
        Plm_cons1(p, q) = Plm_cons1(p, q) + branch1(i,6);
        Slm_cons1(p, q) = Slm_cons1(p, q) + branch1(i,6);
    end
    
    for i = 1:nl1
        p = branch2(i,1);
        q = branch2(i,2);
        yltmp = Ybus2(p,q).*(e2(:, p)*(e2(:, p)')-e2(:, p)*(e2(:, q)'));
        Plm2 = [Plm2; trace(0.5.*[real(yltmp + yltmp.'), imag(yltmp.' - yltmp); imag(yltmp - yltmp.'), real(yltmp + yltmp.')] * W2)];
        Qlm2 = [Qlm2; trace(-0.5.*[imag(yltmp + yltmp.'), real(yltmp - yltmp.'); real(yltmp.' - yltmp), imag(yltmp + yltmp.')] * W2)];
        Plm_cons2(p, q) = Plm_cons2(p, q) + branch2(i,6);
        Slm_cons2(p, q) = Slm_cons2(p, q) + branch2(i,6);
    end
    
    
    Plmtmp1 = [];
    Qmltmp1 = [];
    for i = 1:nl1
        p = branch1(i,2);
        q = branch1(i,1);
        yltmp = Ybus1(p,q).*(e1(:, p)*(e1(:, p)')-e1(:, p)*(e1(:, q)'));
        Plmtmp1 = [Plmtmp1; trace(0.5.*[real(yltmp + yltmp.'), imag(yltmp.' - yltmp); imag(yltmp - yltmp.'), real(yltmp + yltmp.')] * W1)];
        Qmltmp1 = [Qmltmp1; trace(-0.5.*[imag(yltmp + yltmp.'), real(yltmp - yltmp.'); real(yltmp.' - yltmp), imag(yltmp + yltmp.')] * W1)];
        Plm_cons1(p, q) = Plm_cons1(p, q) + branch1(i,6);
        Slm_cons1(p, q) = Slm_cons1(p, q) + branch1(i,6);
    end
    Plm1 = [Plm1, Plmtmp1];
    Qlm1 = [Qlm1, Qmltmp1];
    
    Plmtmp2 = [];
    Qmltmp2 = [];
    for i = 1:nl2
        p = branch2(i,2);
        q = branch2(i,1);
        yltmp = Ybus2(p,q).*(e2(:, p)*(e2(:, p)')-e2(:, p)*(e2(:, q)'));
        Plmtmp2 = [Plmtmp2; trace(0.5.*[real(yltmp + yltmp.'), imag(yltmp.' - yltmp); imag(yltmp - yltmp.'), real(yltmp + yltmp.')] * W2)];
        Qmltmp2 = [Qmltmp2; trace(-0.5.*[imag(yltmp + yltmp.'), real(yltmp - yltmp.'); real(yltmp.' - yltmp), imag(yltmp + yltmp.')] * W2)];
        Plm_cons2(p, q) = Plm_cons2(p, q) + branch2(i,6);
        Slm_cons2(p, q) = Slm_cons2(p, q) + branch2(i,6);
    end
    Plm2 = [Plm2, Plmtmp2];
    Qlm2 = [Qlm2, Qmltmp2];
    
    
    Pmin_cons1 = Pmin_cons1 ./ baseMVA1;
    Pmax_cons1 = Pmax_cons1 ./ baseMVA1;
    Qmin_cons1 = Qmin_cons1 ./ baseMVA1;
    Qmax_cons1 = Qmax_cons1 ./ baseMVA1;
    Pd_cons1 = Pd_cons1 ./ baseMVA1;
    Qd_cons1 = Qd_cons1 ./ baseMVA1;
    Plm_cons1 = Plm_cons1 ./ baseMVA1;
    Slm_cons1 = Slm_cons1 ./ baseMVA1;
    
    Pmin_cons2 = Pmin_cons2 ./ baseMVA2;
    Pmax_cons2 = Pmax_cons2 ./ baseMVA2;
    Qmin_cons2 = Qmin_cons2 ./ baseMVA2;
    Qmax_cons2 = Qmax_cons2 ./ baseMVA2;
    Pd_cons2 = Pd_cons2 ./ baseMVA2;
    Qd_cons2 = Qd_cons2 ./ baseMVA2;
    Plm_cons2 = Plm_cons2 ./ baseMVA2;
    Slm_cons2 = Slm_cons2 ./ baseMVA2;
    
    obj = sum(alpha1) + sum(alpha2);
    for i = 1:nv
        p = busPv(i);
        obj = obj + (Pmax_cons1(p) - (Pd_cons1(p) + P1(p,1)))*Cpv;
        obj = obj + (Pmax_cons2(p) - (Pd_cons2(p) + P2(p,1)))*Cpv;
    end
    
    for i = 1:nsop
        obj = obj + 1000*baseMVA1*Cso(1,i)*1000 / (365*10*24*7);
    end
    for i = 1:nrpfc
        obj = obj + 234*baseMVA1*Cso(1,i+nsop)*1000 / (365*10*24*7);
    end

    for i = 1:nl1
        obj = obj + Closs * abs(Plm1(i,1)+Plm1(i,2));
    end
    
    for i = 1:nl2
        obj = obj + Closs * abs(Plm2(i,1)+Plm2(i,2));
    end
    
    constraint = [];
    for i = 1:ng1
        ck2 = gencost1(i,5)*baseMVA1^2;
        ck1 = gencost1(i,6)*baseMVA1;
        ck0 = gencost1(i,7);
        alpk = alpha1(i,1);
        p = gen1(i,1);
        F = [ck1*P1(p,1)-alpk+ck0+ck1*Pd_cons1(p,1),  sqrt(ck2)*P1(p,1)+sqrt(ck2)*Pd_cons1(p,1);  sqrt(ck2)*P1(p,1)+sqrt(ck2)*Pd_cons1(p,1), -1];
        constraint = [constraint, F <= 0];  % 目标函数LMI约束
    end
    
    for i = 1:ng2
        ck2 = gencost2(i,5)*baseMVA2^2;
        ck1 = gencost2(i,6)*baseMVA2;
        ck0 = gencost2(i,7);
        alpk = alpha2(i,1);
        p = gen2(i,1);
        F = [ck1*P2(p,1)-alpk+ck0+ck1*Pd_cons2(p,1),  sqrt(ck2)*P2(p,1)+sqrt(ck2)*Pd_cons2(p,1);  sqrt(ck2)*P2(p,1)+sqrt(ck2)*Pd_cons2(p,1), -1];
        constraint = [constraint, F <= 0];  % 目标函数LMI约束
    end
    
    for i = 1:nv
        ck2 = Pvcost(i,1)*baseMVA1^2;
        ck1 = Pvcost(i,2)*baseMVA1;
        ck0 = Pvcost(i,3);
        alpk = alpha1(i+ng1,1);
        p = busPv(i,1);
        F = [ck1*P1(p,1)-alpk+ck0+ck1*Pd_cons1(p,1),  sqrt(ck2)*P1(p,1)+sqrt(ck2)*Pd_cons1(p,1);  sqrt(ck2)*P1(p,1)+sqrt(ck2)*Pd_cons1(p,1), -1];
        constraint = [constraint, F <= 0];  % 目标函数LMI约束
    end
    
    for i = 1:nv
        ck2 = Pvcost(i,1)*baseMVA2^2;
        ck1 = Pvcost(i,2)*baseMVA2;
        ck0 = Pvcost(i,3);
        alpk = alpha2(i+ng2,1);
        p = busPv(i,1);
        F = [ck1*P2(p,1)-alpk+ck0+ck1*Pd_cons2(p,1),  sqrt(ck2)*P2(p,1)+sqrt(ck2)*Pd_cons2(p,1);  sqrt(ck2)*P2(p,1)+sqrt(ck2)*Pd_cons2(p,1), -1];
        constraint = [constraint, F <= 0];  % 目标函数LMI约束
    end
    
    
    for i = 1:nl1
        p = branch1(i,1);
        q = branch1(i,2);
        F = [-Slm_cons1(p,q)*Slm_cons1(p,q), Plm1(i,1), Qlm1(i,1); Plm1(i,1), -1,0; Qlm1(i,1), 0, -1];
        %constraint = [constraint, F <= 0];  % 线路lm视在功率的LMI约束
        %constraint = [constraint, Plm1(i,1) <= Plm_cons1(p,q)]; % 线路lm有功约束
    
        p = branch1(i,2);
        q = branch1(i,1);
        F = [-Slm_cons1(p,q)*Slm_cons1(p,q), Plm1(i,2), Qlm1(i,2); Plm1(i,2), -1,0; Qlm1(i,2), 0, -1];
        %constraint = [constraint, F <= 0];  % 线路ml视在功率的LMI约束
        %constraint = [constraint, Plm1(i,2) <= Plm_cons1(p,q)]; % 线路ml有功约束
    end
    
    for i = 1:nl2
        p = branch2(i,1);
        q = branch2(i,2);
        F = [-Slm_cons2(p,q)*Slm_cons2(p,q), Plm2(i,1), Qlm2(i,1); Plm2(i,1), -1,0; Qlm2(i,1), 0, -1];
        %constraint = [constraint, F <= 0];  % 线路lm视在功率的LMI约束
        %constraint = [constraint, Plm2(i,1) <= Plm_cons2(p,q)]; % 线路lm有功约束
    
        p = branch2(i,2);
        q = branch2(i,1);
        F = [-Slm_cons2(p,q)*Slm_cons2(p,q), Plm2(i,2), Qlm2(i,2); Plm2(i,2), -1,0; Qlm2(i,2), 0, -1];
        %constraint = [constraint, F <= 0];  % 线路ml视在功率的LMI约束
        %constraint = [constraint, Plm2(i,2) <= Plm_cons2(p,q)]; % 线路ml有功约束
    end
    
    j = 1;
    for i = 1:ns1
       if ismember(i,fr)
            constraint = [constraint, Pmin_cons1(i) - Pd_cons1(i) <= P1(i,1) + Pso(j,1) <= Pmax_cons1(i) - Pd_cons1(i), Qmin_cons1(i) - Qd_cons1(i) <= Q1(i,1) + Qso(j,1) <= Qmax_cons1(i) - Qd_cons1(i)]; % 节点有功、无功约束
            j = j + 1;
       else
            constraint = [constraint, Pmin_cons1(i) - Pd_cons1(i) <= P1(i,1) <= Pmax_cons1(i) - Pd_cons1(i), Qmin_cons1(i) - Qd_cons1(i) <= Q1(i,1) <= Qmax_cons1(i) - Qd_cons1(i)]; % 节点有功、无功约束
       end
       constraint = [constraint, Vmin_cons1(i)*Vmin_cons1(i) <= Vk1(i,1) <= Vmax_cons1(i)*Vmax_cons1(i)]; % 节点电压约束,注意Xmk(i,1)是有名值
    end
    constraint = [constraint, W1 >= 0];
    
    
    j = 1;
    for i = 1:ns2
       if ismember(i,to)
            constraint = [constraint, Pmin_cons2(i) - Pd_cons2(i) <= P2(i,1) + Pso(j,2) <= Pmax_cons2(i) - Pd_cons2(i), Qmin_cons2(i) - Qd_cons2(i) <= Q2(i,1) + Qso(j,2) <= Qmax_cons2(i) - Qd_cons2(i)]; % 节点有功、无功约束
            j = j + 1;
       else
            constraint = [constraint, Pmin_cons2(i) - Pd_cons2(i) <= P2(i,1) <= Pmax_cons2(i) - Pd_cons2(i), Qmin_cons2(i) - Qd_cons2(i) <= Q2(i,1) <= Qmax_cons2(i) - Qd_cons2(i)]; % 节点有功、无功约束
       end
       constraint = [constraint, Vmin_cons2(i)*Vmin_cons2(i) <= Vk2(i,1) <= Vmax_cons2(i)*Vmax_cons2(i)]; % 节点电压约束,注意Xmk(i,1)是有名值
    end
    constraint = [constraint, W2 >= 0];
    
    
    for i = 1:n
        if i <= nsop
            constraint = [constraint, Pso(i,1) + Pso(i,2) == 0];
        else
            constraint = [constraint, Pso(i,1) + Pso(i,2) == 0, Qso(i,1)+Qso(i,2) == 0];
        end
        constraint = [constraint, [-Cso(1,i)*Cso(1,i), Pso(i,1), Qso(i,1); Pso(i,1), -1, 0; Qso(i,1), 0, -1] <= 0];
        constraint = [constraint, [-Cso(1,i)*Cso(1,i), Pso(i,2), Qso(i,2); Pso(i,2), -1, 0; Qso(i,2), 0, -1] <= 0];
    end
    
    sol = solvesdp(constraint, obj)
    ret = 0;
    % 发电机组成本
    for i = 1 : ng1+nv
        ret = ret + value(alpha1(i));
    end
    for i = 1 : ng2 + nv
         ret = ret + value(alpha2(i));
    end   
    
    % sop日均成本
    sop_cost = 0;
    for i = 1:nsop
        sop_cost = sop_cost + 1000*baseMVA1*Cso(1,i)*1000 / (365*10*24*7);
    end
    for i = 1 : nrpfc
        sop_cost = sop_cost + 234*baseMVA1*Cso(1,i+nsop)*1000 / (365*10*24*7);
    end

    % 网损
    loss_cost = 0;
    for i = 1:nl1
        loss_cost = loss_cost + Closs * abs(value(Plm1(i,1))+value(Plm1(i,2)));
    end
    for i = 1:nl2
        loss_cost = loss_cost + Closs * abs(value(Plm2(i,1))+value(Plm2(i,2)));
    end
    
    % 弃光成本
    abandon_wind_cost = 0;
    for i = 1:nv
        p = busPv(i);
        abandon_wind_cost = abandon_wind_cost + (Pmax_cons1(p) - (Pd_cons1(p) + value(P1(p,1))))*Cpv;
    end
    for i = 1:nv
        p = busPv(i);
        abandon_wind_cost = abandon_wind_cost + (Pmax_cons2(p) - (Pd_cons2(p) + value(P2(p,1))))*Cpv;
    end
    
    ret = ret + abandon_wind_cost + loss_cost + sop_cost;
    cost = [abandon_wind_cost; loss_cost; sop_cost];
    ftc=[fr;to;Cso];
end


