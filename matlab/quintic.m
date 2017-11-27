clc, clear, close all;
tf = 1;
t = 0:0.005:tf;

x0 = 0.83;
x1 = 1;
circ = (-t.^2+(x0+x1)*t-(x0*x1));
for i= 1:length(circ)
    if circ(i) <= 0
        circ(i) = 0;
    end
end
B = 500;
f = 2*pi*10;
hey = B*cos(t*f);
change = hey.*circ;


q0 = 30;
v0 = 0;
a0 = 0;
qf = -30;
vf = 0;
af = 0;

q = [q0 v0 a0 qf vf af]';

A = [1 0 0 0 0 0;
     0 1 0 0 0 0;
     0 0 2 0 0 0;
     1 tf tf^2 tf^3 tf^4 tf^5;
     0 1 2*tf 3*tf^2 4*tf^3 5*tf^4;
     0 0 2 6*tf 12*tf^2 20*tf^3];
 
 a = inv(A)*q;
 
 theta = a(1) + a(2)*t + a(3)*t.^2 + a(4)*t.^3 + a(5)*t.^4 + a(6)*t.^5;
 omega = a(2) + 2*a(3)*t + 3*a(4)*t.^2 + 4*a(5)*t.^3 + 5*a(6)*t.^4;
 alpha = 2*a(3) + 6*a(4)*t + 12*a(5)*t.^2 + 20*a(6)*t.^3;
 
 figure
 plot(t,theta)
 title('Position')
 axis([0 1 -40 40])
 ylabel('position \theta [rad]')
 xlabel('time [s]')
 saveas(gcf,'plots/plot_position.png')
 
 figure
 plot(t,theta+change)
 title('Position, overshooting')
 axis([0 1 -40 40])
 ylabel('position \theta [rad]')
 xlabel('time [s]')
 saveas(gcf,'plots/plot_position_over.png')
 
 figure
 plot(t,omega)
 title('Velocity')
 ylabel('velocity \omega [rad/s]')
 xlabel('time [s]')
 saveas(gcf,'plots/plot_velocity.png')
 
 figure
 plot(t,alpha)
 title('Acceleration')
 ylabel('acceleration \alpha [rad/s^2]')
 xlabel('time [s]')
 saveas(gcf,'plots/plot_acceleration.png')