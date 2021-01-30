%% Script Nollst

x=linspace(-2,2);
y=test_fun(x);
plot(x,y)
grid on
%% 

z=fzero(@test_fun,-1)
w=fzero(@test_fun,1)