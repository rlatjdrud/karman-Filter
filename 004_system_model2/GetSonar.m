function h = GetSonar()
%
%
persistent sonarAlt
persistent k firstRUN

if isempty(firstRUN)
    load SonarAlt
    k = 1;
    firstRUN=1;

end

h = sonarAlt(k);
k=k+1;
