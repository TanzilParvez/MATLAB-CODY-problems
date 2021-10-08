clc
clear

list={'George Bush','George Bush'}

reversed=false;
if size(list,1)>size(list,2)
    list=list(:)';
    reversed=true;
end
alpha_list=string(list);
for i=1:length(alpha_list)
    x=char(alpha_list(i));
    pos=[];
    pos=find(x==' ')+1;
    if length(pos)>1
        chars(i,1)=string(x(pos(end)));
        chars(i,2)=pos(end);
    else
        chars(i,1)=string(x(pos));
        chars(i,2)=pos;
    end
end
chars=sortrows([chars list'],1,'ascend');
alpha_list=[];
for i=1:length(chars(:,end))
    alpha_list=[alpha_list {chars(i,3)}];
end
if reversed
    alpha_list=alpha_list';
end