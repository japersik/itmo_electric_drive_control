function createfigure(X1, Y1, x_lable, y_lable, color)

% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
% Create plot
if color
    plot(X1,Y1,'LineWidth',1.5);
else
    plot(X1,Y1,'LineWidth',1.5,'Color',[0 0 0]);
end
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