% Script Summera

% Beräkna summan 3 + 4 + ... + 52

s=0;        % Sätter summan till 0
for i=3:52  % För i=3, i=4, ..., i=52
    s=s+i;  % addera i till summan
end
disp('Summan är')   % Skriv ut texten och
disp(s)             % värdet av summan