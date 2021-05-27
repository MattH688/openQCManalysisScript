function [QCMStruct] = openQCMmain(PathToQCMtxt)
% Calculating QCM frequencies using
%   1) QCM data importer
%   2) QCM data export plateau

%% Checking whether PathToQCMtxt is valid
if exist('PathToQCMtxt') == 0
   [file,path] = uigetfile('*.txt');
   if isequal(file,0)
       disp('User selected Cancel');
   end
   PathToQCMtxt = [path file];
elseif exist('PathToQCMtxt') == 7
    PathToQCMtxt = dir([PathToQCMtxt '*.txt']);
elseif exist('PathToQCMtxt') == 1
    if PathToQCMtxt(end) ~= '/' || PathToQCMtxt(end) ~= '\' 
        PathToQCMtxt = dir([PathToQCMtxt '/*.txt']);
    else
        PathToQCMtxt = dir([PathToQCMtxt '*.txt']);
    end
end

%% Import text document

[QCMdata] = openQCMtxtimporter(PathToQCMtxt);


    