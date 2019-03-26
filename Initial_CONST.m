function g_const = Initial_CONST()
% һЩ��ֵ �� ��λ���� ��ӦC��������ĺ궨��
% Inputs:   input_config_imu    ����ĸ������
% Output:   config_imu          ת���굥λ��Ĳ���
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018
global G_CONST
%% ��λ����
    G_CONST.PI         = 3.141592653589793;               %����ʹ��Ϊpi��C�����к궨��    
    G_CONST.D2R        = G_CONST.PI/180.0;                   %��ת����
    G_CONST.R2D        = 180.0/G_CONST.PI;                   %����ת��
    G_CONST.mil        = 2*G_CONST.PI/6000.0;                %һ����λ ת�� ����
    G_CONST.nm         = 1853.0;                          %һ����  ��λ:m
    G_CONST.g0         = 9.7803267714;                    %��λ��m/s2
    G_CONST.mg         = 1.0e-3*G_CONST.g0;                  %��λ��m/s2
    G_CONST.ug         = 1.0e-6*G_CONST.g0;                  %��λ��m/s2
    G_CONST.mGal       = 1.0e-3*0.01;                     %��λ��m/s2
%% ����ֵ����    
    G_CONST.earth_wie   = 7.2921151467e-5;              %������ת���ٶ� ���� ��λ������/s
    G_CONST.earth_f     = 0.003352813177897;
    G_CONST.earth_Re    = 6378137;                      %��λ��m
    G_CONST.earth_e     = 0.081819221455524;    
    G_CONST.earth_g0    = 9.7803267714;                 %��λ��m/s2

%%     
    g_const = G_CONST;