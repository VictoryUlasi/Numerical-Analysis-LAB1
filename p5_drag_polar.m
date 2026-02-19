%% Problem 2: Drag Polar + L/D (STUDENT TEMPLATE)
clc; clear; close all;

% ===== Provided data (DO NOT MODIFY) =====
rng(3);
CL = linspace(0.0, 1.2, 18)';
CD0 = 0.020;
K   = 0.045;
CD_true = CD0 + K*CL.^2;
CD_meas = CD_true + 0.0015*randn(size(CL));
% ========================================

lightBlue = [173 216 230]/255;

% TODO 1: Compute L/D
% LD = CL ./ CD_meas;

% TODO 2: Find max L/D and corresponding CL

% TODO 3: Create yyaxis plot meeting all requirements
%   - CD markers: blue edge + light blue fill
%   - L/D: color must match right y-axis
%   - L/D markers white-filled
%   - y-limits start at 0 with padding
%   - annotation has NO box/background
%   - Times New Roman, size 10

% TODO 4: Save figure
% saveas(gcf,'p5_dragpolar.png');
