%% Problem 1: Calibration Plot (STUDENT TEMPLATE)
clc; clear; close all;

% ===== Provided data (DO NOT MODIFY) =====
rng(1);
V = linspace(0.2, 4.8, 12)';     % volts
true_m = 18.0; true_b = -2.0;
F_true = true_m*V + true_b;      % N
sigmaF = 2.0 + 0.3*rand(size(V));
F_meas = F_true + sigmaF.*randn(size(V));
% ========================================

% Light blue (you may use this)
lightBlue = [173 216 230]/255;

% TODO 1: Fit with polyfit (linear)
% p = polyfit(V, F_meas, 1);

% TODO 2: Use polyval to compute:
%   (a) a smooth fit line over Vfine
%   (b) fit values at measured V points (for residuals)

% TODO 3: Create the two-tile plot exactly to requirements
%   - Calibration tile: blue edge + light blue fill markers
%   - Residuals tile: white-filled square markers
%   - Times New Roman, size 10 everywhere
%   - Text annotation with border and white background

% TODO 4: Save as PNG using saveas
% saveas(gcf,'p4_calibration.png');
