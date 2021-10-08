clear
clc

% % clever one

%     find(vertcat(1,diff(a(:)),1))
%     a(ans(diff(ans)==max(diff(ans))))




a=[1 2 2 2 0 0 4 4 4];
[row,col]=size(a);
b=a(:);
counter=1;
k=1;
for i=1:length(b)-1
    if b(i)==b(i+1)
       counter=counter+1;
       if i==length(b)-1
           temp(k,1)=b(i);
           temp(k,2)=counter;
       end
    else
       temp(k,1)=b(i);
       temp(k,2)=counter;
       counter=1;
       k=k+1;
    end
end
temp=[temp;[b(end) 1]];
temp=sortrows(temp,2,'descend');
z=max(temp(:,2));
val=[];
for i=1:length(temp(:,1))
   if temp(i,2)==z
      val=[val;temp(i,1)]; 
   end
end
if row<=col
   val=val'; 
end
val
