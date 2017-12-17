clc, clear, close
folder = '../../robot_control/output/';
files = dir(strcat(folder,'*.csv'));
plot_var = 5;
hold on
legends = {};
for file = files'
    index = strfind(file.name, '.');    
    ms = str2num(file.name(1:index-1));
    if ((ms >= 1100 && ms < 5000))
        import = importdata(strcat(folder,file.name));
        percentage = import.data(:,1);
        force = import.data(:,plot_var);
        plot(percentage,force)
        legends(end+1) = {strcat(num2str(ms),' ms')};
    end
end

import = importdata(strcat(folder,"15000.csv"));
percentage = import.data(:,1);
force = import.data(:,plot_var);
plot(percentage,force, '--k')
legends(end+1) = {'no dynamic force'};
leg = legend(legends,'Location','southwest')
title('Joint 1 force magnitude')
xlabel('Animation percentage [\tau]')
ylabel('Joint force [N]')
title(leg, 'Animation lengths')
saveas(gcf,'plots/joint_force_comp.png')