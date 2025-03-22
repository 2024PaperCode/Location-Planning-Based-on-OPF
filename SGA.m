function [Best_score, Best_x, cg_curve] = SGA(nPop, Max_iter, lb, ub, dim, fobj)
    
    X = lb + (ub - lb) .* rand(nPop, dim);
    Vmax = 0.5*(ub - lb);
    Vmin = -Vmax;
    V = Vmin + (Vmax - Vmin) .* rand(nPop, dim);
    fitness = zeros(nPop, 1);
    for i = 1:nPop
        fitness(i) = fobj(X(i, :));
    end
    Xbest = sortrows([fitness, X]);
    Xbest = Xbest(1,:);
    Best_score = Xbest(1);
    Xbest = Xbest(2:dim+1);
    
    
    for i = 1 : Max_iter
        xita = pi * 2 * rand();
        V = updateV(nPop, dim, X, Xbest, V, i, Max_iter, xita, Vmax, Vmin);
        if xita < pi
            X = updataFirstStage(nPop,dim,X,Xbest,V,fitness,ub,lb);
        else
            X = updateSecondStage(nPop, dim, X, Xbest,ub,lb);
        end

        for j = 1 : nPop
            fitness(j) = fobj(X(j,:));
            if fitness(j) < Best_score
                Xbest = X(j,:);
                Best_score = fitness(j);
            end
        end

        cg_curve(i) = Best_score;
    end
    Best_x = Xbest;
end

function [V] = updateV(nPop, dim, X, Xbest, V, t, T, xita, up, down)
    c = (4.0 * t)/(T * exp(4.0 * t / T));
    for i = 1:nPop
        a = Xbest - X(i,:) - (1.29.*V(i,:).^2*sin(xita).*0.01)./2;
        for j = 1 : dim
            if a(j) > up(j) / 10
                a(j) = up(j) / 10;
            elseif a(j) < down(j) / 10
                a(j) = down(j) / 10;
            end
        end
        V(i,:) = c .* V(i,:) + a;
    end
end


function [X] = updataFirstStage(nPop, dim, X, Xbest ,V, fitness,up,down)
    Xc = zeros(1,dim);
    for j = 1 : dim
        tmp = 0;
        for i = 1 : nPop
            Xc(1, j) = Xc(1, j) + X(i,j)*fitness(i,1);
            tmp = tmp + fitness(i,1);
        end
        Xc(1,j) = Xc(1,j) ./ (tmp * nPop);
    end
    
    b = rand()*4-2;
    d = rand()*3-1.5;
    e = rand()*2-1;
    
    for i = 1 : nPop
        if i <= nPop * 0.2
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) + V(i,:);
        elseif i >= nPop * 0.8
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) - d * (Xc - X(i,:)) + V(i,:);
        else
            X(i,:) = X(i,:) + b * (Xbest - X(i,:)) + d * (Xc - X(i,:)) - e * (X(nPop, :) + X(i, :)) + V(i,:);
        end
        
        for j = 1:dim
            if X(i,j) > up(j)
                X(i,j) = up(j);
            elseif X(i,j) < down(j)
                X(i,j) = down(j);
            end
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

function [X] = updateSecondStage(nPop, dim, X, Xbest,up,down)
    d = brwon(dim);
    for i = 1 : nPop
        for j = 1 : dim
            r = rand();
            if r >= 0.5
                X(i,j) = X(i,j) + (X(i,j) - Xbest(j))*r;
            else
                X(i,j) = X(i,j) + (X(i,j) - Xbest(j))*r*d;
            end

             if X(i,j) > up(j)
                X(i,j) = up(j);
            elseif X(i,j) < down(j)
                X(i,j) = down(j);
            end
        end
    end
end