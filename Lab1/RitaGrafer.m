% Script RitaGrafer

x=linspace(0,2*pi);
f=sin(x);
g=sin(4*x);
plot(x,f,'green',x,g,'red')
xlabel('x')
ylabel('y')
title('sin(x) och sin(4x)')
grid on