clear
clc

s1='Nevada Rhode Island West Verginia Texas Weimyoung';
s2=s1;
a=[0 find(s1==' ') length(s1)+1];
for i=1:length(a)-1
    if s1(a(i)+1:a(i+1)-1)=="New"
        s2(a(i)+1:a(i+2)-1)=1;
    elseif s1(a(i)+1:a(i+1)-1)=="North"
        s2(a(i)+1:a(i+2)-1)=1;
    elseif s1(a(i)+1:a(i+1)-1)=="West"
        s2(a(i)+1:a(i+2)-1)=1;
    elseif s1(a(i)+1:a(i+1)-1)=="East"
        s2(a(i)+1:a(i+2)-1)=1;
    elseif s1(a(i)+1:a(i+1)-1)=="Rhode"
        s2(a(i)+1:a(i+2)-1)=1;
            elseif s1(a(i)+1:a(i+1)-1)=="South"
        s2(a(i)+1:a(i+2)-1)=1;
    end
end
s2(s2==1)=[]