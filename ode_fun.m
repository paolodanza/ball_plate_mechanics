function [y_dot] = ode_fun(t,y)
m1 = 0.625 + 0.625 + 1.53153; % Kg
m2 = 0.625 + 0.78125; % Kg
m3 = 2; % Kg
B1 = 20 ; B2 = 20; B3 = 20; % N/m/s
B4 = 10;
I11 = 0.0416833; I22 = 0.0416833; I33 = 0.0833333;
Cmotx = 0; Cmoty = 0; Cmotz = 8;
Fmotx = 2;
Fmot1x = 2;
Fmoty = 1;
% [l1 l2 l1_dot l2_dot wx wy wz thetax thetay thetaz
% R11 R12 R13 ... : 9]
y_dot = [y(3);
        y(4);
        (Fmotx+Fmot1x-y(3)*(B1+B2))/(m1+m2+m3);
        (Fmoty-y(4)*B3)/(m2+m3);
        ((I22-I33)*y(6)*y(7)-B4*y(5)+Cmotx)/(I11);
        ((I33-I11)*y(7)*y(5)-B4*y(6)+Cmoty)/(I22);
        ((I11-I22)*y(5)*y(6)-B4*y(7)+Cmotz)/(I33);
        y(5);
        y(6);
        y(7); %% Da qui matrice R
        y(12)*y(7)-y(13)*y(6);
        y(13)*y(5)-y(11)*y(7);
        y(11)*y(6)-y(12)*y(5);
        
        y(15)*y(7)-y(16)*y(6);
        y(16)*y(5)-y(14)*y(7);
        y(14)*y(6)-y(15)*y(5);
        
        y(18)*y(7)-y(19)*y(6);
        y(19)*y(5)-y(17)*y(7);
        y(17)*y(6)-y(18)*y(5);
        ];
end