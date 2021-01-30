%% Script Nollst

x=linspace(-1.5,1.5);
y=min_fun(x);
plot(x,y)
grid on
%% 

z=fzero(@min_fun,1)