function p=polylen_fun(x,y)
% p=polylen_fun(x) beräknar längden av ett polygontåg
%
n=length(x);
L=0;
for i=1:n-1
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
p=L;