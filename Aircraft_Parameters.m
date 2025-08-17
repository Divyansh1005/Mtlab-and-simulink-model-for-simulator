%% Design Parameters 
k=1;
g=9.81;
M = 750;
Ixx = 1331;
Iyy  =  935;
Izz   = 2080 ;
Ixz  =0.00;
b = 15.0;
S_w = 12.0;
c = 1.0;
T_max=750*2*9.81/10;
%%  Lon. Parameters
CL0 = 0.573*k;
CD0 = 0.0434*k;
Cm0 = 0.027*k;
CL_alpha = 6.096*k;
CD_alpha = 0.2692*k;
Cm_alpha = -2.085*k;
CL_dele = 0.3724*k;
CD_dele = 0.0135*k; 
Cm_dele = -1.827*k;
CL_q = 7.95*k; 
CD_q = 0*k; 
Cm_q = -20.89*k;


%%  Lat/Dir Parameters

CY0 = 0;
Cl0 = 0;
Cn0 = 0;
CY_beta = -0.532;
Cl_beta = -0.047;
Cn_beta = 0.033;
CY_p = -0.062616222;
Cl_p = -0.476;
Cn_p = -0.07;
CY_r = 0.5; 
Cl_r = 0.152662667;
Cn_r = -0.033666667;
CY_dela = 0; 
Cl_dela = 0.298;
Cn_dela =  -0.0015; 
CY_delr = 0.1302; 
Cl_delr = 0.0044;
Cn_delr = -0.054;

Aero_Long=[CL0, CD0, Cm0...
    CL_alpha, CD_alpha, Cm_alpha...
    CL_dele, CD_dele, Cm_dele...
    CL_q, CD_q,  Cm_q];

Aero_Lat_Dir = [CY0, Cl0, Cn0...
    CY_beta, Cl_beta, Cn_beta...
    CY_p, Cl_p, Cn_p...
    CY_r, Cl_r, Cn_r...
    CY_dela, Cl_dela, Cn_dela...
    CY_delr, Cl_delr, Cn_delr];

Design_Parameters=[M, Ixx, Iyy, Izz, Ixz, b, S_w, c];
