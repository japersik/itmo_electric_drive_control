function createfigure(X1, Y1, Y2, x_lable, y_lable1, y_lable2, color)

% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
axes2 = axes('Parent',figure1);
hold(axes1,'on');
hold(axes2,'on');
% Create plot
if color
    subplot(2,1,1,axes1);
    plot(X1,Y1,'LineWidth',1.5);
    subplot(2,1,2,axes2);
    plot(X1,Y2,'--','LineWidth',1.5);
else
    subplot(2,1,1,axes1);
    plot(X1,Y1,'LineWidth',1.5,'Color',[0 0 0]);
    subplot(2,1,2,axes2);
    plot(X1,Y2,'--','LineWidth',1.5,'Color',[0 0 0]);
end

% Create ylabel
ylabel(axes1, y_lable1,...
'LineStyle','none',...
'HorizontalAlignment','center',...
'Interpreter','latex');
ylabel(axes2, y_lable2,...
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
set(axes2,'FontSize',14,'GridAlpha',0.5,'GridColor',[0 0 0],'XColor',...
[0 0 0],'XGrid','on','XMinorGrid','on','YColor',[0 0 0],'YGrid','on',...
'YMinorGrid','on','ZColor',[0 0 0]);
hold(axes1,'off');
hold(axes2,'off');