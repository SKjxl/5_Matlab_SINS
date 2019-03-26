function INSData = INS_DataIinitial(pos,vn,att,time)
% ���㲹������g��nϵ�µ�ͶӰ
% Inputs:   pos = [lat;lon;h] γ�ȡ����ȡ��̣߳���λ���� m
% Output:   g_n     ��λ m/s2
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018

%% ��Ҫ������
    INSData.pos = pos;
    INSData.att = att;
    INSData.vel = vn;
    INSData.time = time;                          

%% ����������
    INSData.w_ib_b = [0.0;0.0;0.0];           %������� ������
    INSData.DeltaTheta_ib_b = [0.0;0.0;0.0];  %������� ������
    INSData.f_ib_b = [0.0;0.0;0.0];           %�Ӽ���� ���ٶ�
    INSData.DeltaV_ib_b = [0.0;0.0;0.0];      %�Ӽ���� �ٶ�����
    
%% ��̬�任����
    INSData.C_b_n = change_euler2DCM(INSData.att);
    INSData.Q_b_n = change_DCM2Q(INSData.C_b_n);
    
%% �м��������
    INSData.DeltaTheta_in_n = [0.0;0.0;0.0];   %nϵ��ת���ۻ�
    INSData.DeltaV_n        = [0.0;0.0;0.0];          %vn�ٶ����� v(m)=v(m-1)+DeltaV_n
    INSData.Rmh             = earth_get_Rmh(INSData.pos);
    INSData.Rnh             = earth_get_Rnh(INSData.pos);
    INSData.w_ie_n          = earth_get_w_ie_n(INSData.pos);
    INSData.w_en_n          = earth_get_w_en_n(INSData.pos,INSData.vel,INSData.Rmh,INSData.Rnh);
    INSData.w_in_n          = INSData.w_ie_n+INSData.w_en_n;

    INSData.phi             = [0.0;0.0;0.0];
    INSData.DeltaV_n_sf     = [0.0;0.0;0.0];
    
    INSData.fn              = [0.0;0.0;0.0];
    INSData.fb              = [0.0;0.0;0.0];    %�����Ժ��
    
%% ����������
    INSData.IMUError        = IMU_ErrorInitial(0.0,0.0,0,0.0,0.0,0.0,0,0.0);
    
    
    