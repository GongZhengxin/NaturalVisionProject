%%======！！！！请务必不要搞错subID 和 sessID ！！！=====
clear; 
close all

% Please run each exp under the home directory of
% NaturalVisionProject
workDir = pwd;
addpath(genpath(workDir));

%% Set subject and session info
% You should manually input subject ID and session ID
subName = 'Test';subID = 10086; sessID = 1; 

%% Run CoCo fMRI  
% You should mannual change runID for each run
close all;sca;
CoCoMRI(subID,sessID,1);

%% Run Resting fMRI  
% You should mannual change runID for each run
close all;sca;
RestingMRI(subID,sessID);

%% Run CoCo memroy  
% You should mannual change runID for each run
close all;sca;
CoCoMemory(subID,sessID);

%% Run CoCo MEG 
% For 10 core subjects, there is one session of COCO MEG. 
% For other 20 subjects, no COCO MEG

% You should mannual change runID for each run
close all;sca;
CoCoMEG(subID,sessID,1);

%% Run Resting MEG 
% You should mannual change runID for each run
close all;sca;
RestingMEG(subID,sessID);

