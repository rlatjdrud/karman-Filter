function avg = AvgFilter(x)
%
%
persistent prevAVG k
persistent firstRun

if isempty(firstRun)
    k = 1;
    prevAVG = 0;
    firstRun = 1;
end

alpha = (k-1)/k;
avg = alpha*prevAVG+(1-alpha)*x;

prevAVG = avg;
k = k+1;
