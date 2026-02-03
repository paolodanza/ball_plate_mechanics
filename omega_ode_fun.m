function [w_dot] = omega_ode_fun(t,w)
B4 = 2;
I11 = 0.104167; I22 = 0.0526042; I33 = 0.0526042;
Cmotx = 1; Cmoty = 0; Cmotz = 0;
% [w = wx wy wz thetax thetay thetaz]
w_dot = [((I22-I33)*w(2)*w(3)-B4*w(1)+Cmotx)/(I11);
        ((I33-I11)*w(3)*w(1)-B4*w(2)+Cmoty)/(I22);
        ((I11-I22)*w(1)*w(2)-B4*w(3)+Cmotz)/(I33);
        w(1);
        w(2);
        w(3)];
end