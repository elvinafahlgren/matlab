function m=min_median(v)
% m = min_median(v) beräknar medianen av elementen i vektorn v
%
s=sort(v);              % s sorterad version av v
n=length(v);            % n antal element i v
if rem(n,2)==0          % n jämnt
    m=(s(n/2)+s(n/2+1))/2;
else                    % n udda
    m=s((n+1)/2);
end