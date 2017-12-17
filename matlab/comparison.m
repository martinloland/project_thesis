clc, clear, close
plot_var = 5;
folder = '../../robot_control/output/';
ms15 = importdata(strcat(folder,"1500.csv"));
f15 = ms15.data(:,plot_var);
max(f15)


ms30 = importdata(strcat(folder,"3000.csv"));
f30 = ms30.data(:,plot_var);
max(f30)

max(f15)/max(f30)