function createfigure(X1, Y1, Y2, x_lable, y_lable, Legend, color)

% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
% Create plot
if color
    plot(X1,Y1,'LineWidth',2);
    plot(X1,Y2,'--','LineWidth',3);
else
    plot(X1,Y1,'LineWidth',2,'Color',[0 0 0]);
    plot(X1,Y2,'--','LineWidth',3,'Color',[0 0 0]);
end
legend(Legend, 'Interpreter','latex');

% Create ylabel
ylabel(y_lable,...
'LineStyle','none',...
'HorizontalAlignment','center',...
'Interpreter','latex');
 
% Create xlabel
xlabel(x_lable,'HorizontalAlignment','center','Interpreter','latex');

 
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 10]);
% Set the remaining axes properties
set(axes1,'FontSize',14,'GridAlpha',0.5,'GridColor',[0 0 0],'XColor',...
[0 0 0],'XGrid','on','XMinorGrid','on','YColor',[0 0 0],'YGrid','on',...
'YMinorGrid','on','ZColor',[0 0 0]);
hold(axes1,'off');