%% Problem 1: Calibration Plot (STUDENT TEMPLATE)
clc; clear; close all;

% ===== Provided data (DO NOT MODIFY) =====
rng(1);
V = linspace(0.2, 4.8, 12)';     
true_m = 18.0; true_b = -2.0;
F_true = true_m*V + true_b;      
sigmaF = 2.0 + 0.3*rand(size(V));
F_meas = F_true + sigmaF.*randn(size(V));
% ========================================

% Light blue (you may use this)
lightBlue = [173 216 230]/255;

% TODO 1: Fit with polyfit (linear)
p=polyfit(V,F_meas,1);

% TODO 2: Use polyval to compute:
%   (a) a smooth fit line over Vfine
%   (b) fit values at measured V points (for residuals)
Vfine=linspace(min(V),max(V),200);
Ffit_fine=polyval(p,Vfine);
Ffit_data=polyval(p,V);
residual=F_meas-Ffit_data;

% TODO 3: Create the two-tile plot exactly to requirements
%   - Calibration tile
%   - Residuals tile

figure
tiledlayout(2,1)

% -------- Top Tile --------
nexttile
hold on
h1=plot(V,F_meas,'o','MarkerSize',6,'MarkerEdgeColor','b','MarkerFaceColor',lightBlue,'LineStyle','none');
h2=plot(Vfine,Ffit_fine,'k','LineWidth',1.8);

title('Calibration Curve','FontName','Times New Roman','FontSize',10)
xlabel('Voltage, V (V)','FontName','Times New Roman','FontSize',10)
ylabel('Force, F (N)','FontName','Times New Roman','FontSize',10)

legend([h1 h2],{'Measured Data','Linear Fit'},'Location','best','FontName','Times New Roman','FontSize',10)

axis tight
xticks(0:1:5)
grid on
box on
set(gca,'FontName','Times New Roman','FontSize',10,'LineWidth',1.0)

eqtxt=sprintf('F = %.3f V + %.3f',p(1),p(2));
text(min(V)+0.3,min(F_meas)+5,eqtxt,'FontName','Times New Roman','FontSize',10,'BackgroundColor','white','EdgeColor','black')

hold off

% -------- Bottom Tile --------
nexttile
hold on
plot(V,residual,'-s','LineWidth',1.2,'MarkerSize',5,'MarkerFaceColor','w');
yline(0)

title('Residuals','FontName','Times New Roman','FontSize',10)
xlabel('Voltage, V (V)','FontName','Times New Roman','FontSize',10)
ylabel('Residual (N)','FontName','Times New Roman','FontSize',10)

axis tight
grid on
box on
set(gca,'FontName','Times New Roman','FontSize',10,'LineWidth',1.0)

hold off

% TODO 4: Save as PNG using saveas
saveas(gcf,'p4_calibration.png');