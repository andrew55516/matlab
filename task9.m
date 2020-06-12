disp('1) ');
F = [1, 2, -1, -4, -2];
G = [1, 2, 0, 1, 2];
[q, s, t] = gcd(F, G);

x = sprintf('(%s)*(%s) + (%s)*(%s) = %s',Pol2Txt(s),Pol2Txt(F),Pol2Txt(t),Pol2Txt(G),Pol2Txt(q));
disp(x)

disp('2) ');
F = [1, 3, 1, 1, 3, 1];
G = [0, 0, 1, 2, 1, 2];
[q, s, t] = gcd(F, G);

x = sprintf('(%s)*(%s) + (%s)*(%s) = %s',Pol2Txt(s),Pol2Txt(F),Pol2Txt(t),Pol2Txt(G),Pol2Txt(q));
disp(x)

function Pol=Pol2Txt(P)
    n=length(P);
    Pol='';
    for i=1:n-1 
        if P(i) > 0
            if Pol
                temp = sprintf('+%dx^%d', P(i), n-i);
            else
                temp = sprintf('%dx^%d', P(i), n-i);
            end
            Pol=[Pol temp];
        elseif P(i) < 0
            temp = sprintf('%dx^%d', P(i), n-i);  
            Pol=[Pol temp];
        end
    end
    if P(n) > 0
        if Pol
                temp = sprintf('+%d', P(i));
            else
                temp = sprintf('%d', P(i));
            end
            Pol=[Pol temp];
    elseif P(n) < 0
        temp = sprintf('%d', P(i));  
        Pol=[Pol temp];
    end
end