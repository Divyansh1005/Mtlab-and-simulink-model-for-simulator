clear 
close all
clc
%% Initilization (Trim Values)
Aircraft_Parameters
h_0=10000/3.28; %altitude in feet
[ T , a , Pr , rho ] = atmosisa( h_0 );
CL_max=1.2; 
V_satll=sqrt((2*M*g)/(rho*S_w*CL_max));
Va=1.2*V_satll;
CL_trim=(2*M*g)/(rho*S_w*Va*Va);
del_e =-(((Cm0)*CL_alpha + Cm_alpha*(CL_trim-CL0))/(Cm_dele*CL_alpha - Cm_alpha*(CL_dele)));
alpha = ((CL_trim-CL0 - (CL_dele)*del_e)/CL_alpha);
beta=0/57.3;
u_0=Va*cos(alpha)*cos(beta);
v_0=Va*sin(beta);
w_0=Va*sin(alpha)*cos(beta);
p_0=0/57.3;
q_0=0/57.3;
r_0=0;
phi_0=0;
theta_0=alpha;
psi_0=0;


del_a=0;
del_r=0;

Cx = -(CD0+CD_alpha*alpha)*cos(alpha) + (CL0+CL_alpha*alpha)*sin(alpha);
Cx_q = -CD_q*cos(alpha) + CL_q*sin(alpha);
Cz = -(CD0+CD_alpha*alpha)*sin(alpha) - (CL0+CL_alpha*alpha)*cos(alpha);
Cz_q = -CD_q*sin(alpha) - CL_q*cos(alpha);
del_t=-(M/T_max)*(r_0*v_0 - q_0*w_0 - g*sin(theta_0) + rho*Va^2*S_w/2/M*(Cx + Cx_q*c*q_0/2/Va + (-CD_dele*cos(alpha)*abs(del_e) + CL_dele*sin(alpha)*del_e)));



wgs84 = wgs84Ellipsoid('kilometer');
lat = 37.7;
lon = -122.4;
hhh = 0;
[X_p_0,Y_p_0,Z_p_0] = geodetic2ecef(wgs84,lat,lon,hhh);
x0=[u_0;v_0;w_0;p_0;q_0;r_0;phi_0;theta_0;psi_0;X_p_0;Y_p_0;h_0];
