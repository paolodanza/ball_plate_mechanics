clc, clear all, close all

t0 = 0; tf = 10; % Observation time
h = 0.5+0.05/2;

% Input forces
Cmotx = 0; Cmoty = 0; Cmotz = 8;
Fmotx = 2;
Fmot1x = 2;
Fmoty = 1;

% Initial condition
l10 =  1-0.9; 
l1_dot0 = 0;

l20 =  1; 
l2_dot0 = 0;

% [l1 l2 l1_dot l2_dot wx wy wz thetax thetay thetaz R11 , ... , R33]
x0 = [l10 l20 l1_dot0 l2_dot0 0 0 0 0 0 0, 1 0 0 0 1 0 0 0 1]';
% Solution translation
figure(1)
[t1,y] = ode45(@ode_fun,[t0 tf],x0);
subplot(2,1,1)
plot(t1,y(:,1),t1,y(:,3)), legend('l1','l1-dot'), grid on
subplot(2,1,2)
plot(t1,y(:,2),t1,y(:,4)), legend('l2','l2-dot'), grid on

% Solution rotation
figure(2)
y_deg = [y(:,1:4) y(:,5:10)*180/pi];
subplot(2,1,1)
plot(t1,y_deg(:,5),t1,y_deg(:,6),t1,y_deg(:,7)), legend('wx','wy','wz'), grid on
subplot(2,1,2)
plot(t1,y_deg(:,8),t1,y_deg(:,9),t1,y_deg(:,10)), legend('theta_x','theta_y','theta_z'), grid on

% Point P
%rOP = [y(:,1)+0.25*(cos(y(:,8))+sin(y(:,8))), y(:,2)+0.25*(sin(y(:,8))-cos(y(:,8))), (h+0.025)*ones(length(t1),1)];

rOP_R = [];
for i = 1:length(t1)
    R_t = [y(i,11) y(i,12) y(i,13);
            y(i,14) y(i,15) y(i,16);
            y(i,17) y(i,18) y(i,19)];
    rOP_new = ([y(i,1); y(i,2); h] + R_t * [0.25; -0.25; 0.005])';
    rOP_R = [rOP_R; rOP_new]; 
end
figure(3)
%plot3(rOP(:,1),rOP(:,2),rOP(:,3)), hold on
plot3(rOP_R(:,1),rOP_R(:,2),rOP_R(:,3)), hold on, grid on,axis equal
xlabel('x'), ylabel('y'),zlabel('z')




