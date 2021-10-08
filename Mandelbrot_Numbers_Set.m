clc
clear all

C=[i 1 -2*i -2]
lim=10
[row,col]=size(C);
for m=1:row
    for j=1:col
        z=[];
        z(1)=C(m,j);
        for n=1:lim-1
            if abs(z(n)^2+C(m,j))<=2
                z(n+1)=z(n)^2+C(m,j);
            else
                break
            end
        end
        N(m,j)=length(z);
    end
end

