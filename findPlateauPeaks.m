function [locPlateau]=findPlateauPeaks(pbool)


pbool = [false pbool false];
pstart = strfind(pbool,[0 1]);
pend = strfind(pbool,[1 0]) - 1;

plot(1:numel(yDiff),yDiff,'-b',pstart,yDiff(pstart), ...
    'ro',pend,yDiff(pend),'rx');
