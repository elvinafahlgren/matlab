% RitaTrianglar

x=[0.1 0.8 0.9 0.1];
y=[0.2, 0.1 0.7 0.2];
subplot(1,2,1)          % Delar in Figure i 1x2 delar och g¨or 1:a aktivt        
plot(x,y,'-o')          % ’-o’ förbinder med r¨ata linjer och markerar med ringar
axis([0 1 0 0.8])       % Ger lite "luft’ runt triangeln

subplot(1,2,2)          % Delar in Figure i 1x2 delar och gör 2:a aktivt
fill(x,y,'g')           % Fyller triangeln med grön färg
axis([0 1 0 0.8])