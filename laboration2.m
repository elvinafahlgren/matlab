%% Uppgift 4
A1 = [0 0; 0 0.16];
A2 = [0.85 0.04; -0.04 0.85];
A3 = [0.2 -0.26; 0.23 0.22];
A4 = [-0.15 0.28; 0.26 0.24];

b1 = [0; 0];
b2 = [0; 1.6];
b3 = [0; 1.6];
b4 = [0; 0.44];

M = 100000;

Z = zeros(M,2);

x = 0;
y = 0;
V = [x; y];

for i=2 : M
    r = rand;
    F = [0;0];
    
    if r < 0.01
        F = A1 * V + b1;
        
    elseif r < 0.85
        F = A2 * V + b2;
    elseif r < 0.93
        F = A3 * V + b3;
    else
        F = A4 * V + b4;
    end
    x = F(1);
    y = F(2);
    
    V = [x; y];
    Z(i,1) = x;
    Z(i,2) = y;
end


X = Z(:,1);
Y = Z(:,2);
plot(X, Y, '.','Color', [0,230,250]/256,'markersize',3)

        