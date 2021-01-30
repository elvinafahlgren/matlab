% Script Summera

% Beräkna summan 1^2 + 2^2 + 3^2 + 4^2 + 5^2

s=0;            % Sätter summan till 0
for i=1:5       % För i=1, i=2, ..., i=5
    s=s+i^2;    % addera i^2 till summan
end
disp('Summan är')   % Skriv ut texten och
disp(s)             % värdet av summan