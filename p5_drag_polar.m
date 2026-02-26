%% Problem 2: Drag Polar + L/D (STUDENT TEMPLATE)
clc; clear; close all;

% ===== Provided data (DO NOT MODIFY) =====
rng(3);
CL = linspace(0.0,1.2,18)';
CD0 = 0.020;
K   = 0.045;
CD_true = CD0 + K*CL.^2;
CD_meas = CD_true + 0.0015*randn(size(CL));
% ========================================

lightBlue = [173 216 230]/255;

% TODO 1: Compute L/D
LD=CL./CD_meas;

% TODO 2: Find max L/D and corresponding CL
[LDmax,i]=max(LD);
CLmax=CL(i);

% TODO 3: Create yyaxis plot meeting all requirements

figure

yyaxis left
h1=plot(CL,CD_meas,'o','MarkerSize',5,'MarkerEdgeColor','b','MarkerFaceColor',lightBlue,'LineStyle','none');
ylabel('C_D','FontName','Times New Roman','FontSize',10)
ylim([0 1.25*max(CD_meas)])

yyaxis right
h2=plot(CL,LD,'-o','MarkerFaceColor','w','LineWidth',1.6);
ylabel('L/D','FontName','Times New Roman','FontSize',10)
ylim([0 1.35*max(LD)])

hold on
h3=plot(CLmax,LDmax,'p','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',12,'LineWidth',1.5);

txt=sprintf('max L/D = %.2f at C_L = %.2f',LDmax,CLmax);
text(CLmax+0.03,LDmax*1.05,txt,'FontName','Times New Roman','FontSize',10)

xlabel('C_L','FontName','Times New Roman','FontSize',10)
title('Drag Polar and L/D','FontName','Times New Roman','FontSize',10)

legend([h1 h2 h3],{'Measured C_D','L/D','Max L/D'},'Location','best','FontName','Times New Roman','FontSize',10)

set(gca,'FontName','Times New Roman','FontSize',10,'LineWidth',1.0)
xlim([0 1.2])
grid on
box on

% TODO 4: Save figure
saveas(gcf,'p5_dragpolar.png');