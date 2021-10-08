clc
clear

n=480;
prime=primes(n);
c=0;
for i=1:length(prime)
    for j=1:length(prime)
        if prime(i)+prime(j)==n
            prime(i);
            prime(j);
            c=c+1;
        end
    end
end
if rem(c,2)==0
    c=c/2;
else
    c=(c/2+.5);
end
