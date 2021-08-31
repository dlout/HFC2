%% HFC 2 Analysis
% v.1

%% Read in raw data

clear all
close all
clc

a=[];

a=xlsread('P1_6inch_table2table.xlsx');

format bank

a;

%% Clean data
% get column 6 data (medial lateral foot position) and place into its own
% matrix (may be good idea to write off to separate file later...)

b=a(:,6); % get ML foot postion column
c=a(:,3); % get sensor number (1=left foot, 2=right foot)
ML_foot_data=[c(:,:) b(:,:)]; % place matrices together into one

%% Plot data

scatter(c,b)
% bar(ML_foot_data)

%% Separate feet matrices

d=[]

for row=1:size(ML_foot_data,1)
    if ML_foot_data(row,1)==1
        d=ML_foot_data(row,2)
    end
end