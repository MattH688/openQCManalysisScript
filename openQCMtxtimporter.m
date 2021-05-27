function [QCMdata] = openQCMtxtimporter(PathToQCMtxt)
%% openQCM text importer for Wi2

T = readtable(PathToQCMtxt);

QCMfreq = T.Var3;

%RealTimePlot
%plot(T.Var2,QCMfreq)

%TimePlot
Time = datestr(seconds(1:(length(QCMfreq))),'HH:MM:SS');
for i = 1 : length(QCMfreq)
    Tdur(i) = duration(Time(i,:),'InputFormat','hh:mm:ss');
end

plot(Tdur,QCMfreq)

QCMfreqAdj = (QCMfreq-QCMfreq(1,:));

plot(Tdur,QCMfreqAdj)
%find plateau
y = QCMfreqAdj;

%y(find(y>0.2)) =0.2;
%y(find(y<-0.2)) =-0.2;

yDiff = diff(y);
yDiff(find(yDiff>0.5)) =1000;
yDiff(find(yDiff<-0.5)) =-1000;

plot(yDiff)
hold on
plot(QCMfreqAdj)
hold off

%pbool = (diff(find(yDiff == 0))==1)';
%find((diff(find(yDiff == 0))>=5)==1)

% Find all locations where yDiff = 0
y = find(yDiff == 0);

% Find where locations 0 are equal to or less than 5 apart
y1 = y(find((diff(find(yDiff == 0))>=5)==1));

% Change +5 to all values to be +1000 to avoid broken plateaus
for i = 1:length(y1)
    
end

% Find all data which is essentially 0
pbool = (-1<yDiff<1)';
pboolS = (1>yDiff)';
pboolE = (-1<yDiff)';

locPos = findPlateauPeaks(pbool);

%pbool1 = (diff(find(yDiff == -1000))==1)';

%locPos1 = findPlateauPeaks(pbool1);

