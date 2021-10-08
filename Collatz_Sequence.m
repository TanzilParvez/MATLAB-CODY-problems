clc
clear
nmax=100;
peak=max(arrayfun(@(x) collatz(x),[1:nmax]));
function peak=collatz(n)
    peak=n;
    while n~=1        
        if rem(n,2)==0
            n=n/2;
        else
            n=3*n+1;
        end
        if n>peak
            peak=n;
        end
    end
end
