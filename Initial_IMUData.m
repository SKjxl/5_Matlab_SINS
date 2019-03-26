function IMUData = Initial_IMUData()
% IMU���ݼ���������ʼ��
% Inputs:   
% Output:   imu���� �� ������
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 25/12/2018

%% ���POS80 ������
load('E:\n_WorkSpace\Matlab\0_Data\INSGPS���ʹ������\imudata_pos80');
IMUData = imudata(586800:1153371,:);
%     IMUData = imudata;



%% ���� ���������
%{
global G_CONST

    imuerror.gyr_bias     = input_imuerror.gyr_bias*G_CONST.D2R/3600.0;                  %������ƫ deg/h ��> rd/s
    imuerror.gyr_arw      = input_imuerror.gyr_arw*G_CONST.D2R/sqrt(3600.0);             %���ݽǶ�������� ��λ��deg/sqrt(h)->rd/sqrt(s)
    imuerror.gyr_sqrtROG  = input_imuerror.gyr_sqrtROG*G_CONST.D2R/3600.0/sqrt(3600.0);    %����һ������Ʒ����� ��λ��deg/h/sqrt(h)-> ?�Լ�Ҳ�㲻�����
    imuerror.gyr_TauG     = input_imuerror.gyr_TauG;                                %����һ������Ʒ��������ʱ�� ��λ��s
    if input_imuerror.gyr_TauG>0 
        imuerror.gyr_sqrtROG = input_imuerror.gyr_sqrtROG*G_CONST.D2R/3600.0*sqrt(2/input_imuerror.gyr_TauG);                    % Markov process
    end
    imuerror.gyr_dKG.xx   = input_imuerror.gyr_dKG.xx;
    imuerror.gyr_dKG.xy   = input_imuerror.gyr_dKG.xy;
    imuerror.gyr_dKG.xz   = input_imuerror.gyr_dKG.xz;
    imuerror.gyr_dKG.yx   = input_imuerror.gyr_dKG.yx;
    imuerror.gyr_dKG.yy   = input_imuerror.gyr_dKG.yy;
    imuerror.gyr_dKG.yz   = input_imuerror.gyr_dKG.yz;
    imuerror.gyr_dKG.zx   = input_imuerror.gyr_dKG.zx;
    imuerror.gyr_dKG.zy   = input_imuerror.gyr_dKG.zy;
    imuerror.gyr_dKG.zz   = input_imuerror.gyr_dKG.zz;
    imuerror.acc_bias     = input_imuerror.acc_bias*G_CONST.ug;                %�Ӽ���ƫ ug -> m/s2
    imuerror.acc_arw      = input_imuerror.acc_arw*G_CONST.ug/sqrt(1);         %�Ӽ��ٶ�������� ��λ��ug/sqrt(Hz)->m/s2/sqrt(1),����Ϊɶȡ1Hz������
    imuerror.acc_sqrtROG  = input_imuerror.acc_sqrtROG*G_CONST.ug/sqrt(3600.0);  %�Ӽ�һ������Ʒ����� ��λ��ug/sqrt(h) -> m/s2
    imuerror.acc_TauG     = input_imuerror.acc_TauG;                        %�Ӽ�һ������Ʒ��������ʱ�� ��λ��s
    if input_imuerror.acc_TauG>0 
        imuerror.acc_sqrtROG = input_imuerror.acc_sqrtROG*G_CONST.ug*sqrt(2/input_imuerror.acc_TauG);                    % Markov process
    end
    imuerror.acc_dKG.xx   = input_imuerror.acc_dKG.xx;                      %���� ͬ ����
    imuerror.acc_dKG.xy   = input_imuerror.acc_dKG.xy;
    imuerror.acc_dKG.xz   = input_imuerror.acc_dKG.xz;
    imuerror.acc_dKG.yx   = input_imuerror.acc_dKG.yx;
    imuerror.acc_dKG.yy   = input_imuerror.acc_dKG.yy;
    imuerror.acc_dKG.yz   = input_imuerror.acc_dKG.yz;
    imuerror.acc_dKG.zx   = input_imuerror.acc_dKG.zx;
    imuerror.acc_dKG.zy   = input_imuerror.acc_dKG.zy;
    imuerror.acc_dKG.zz   = input_imuerror.acc_dKG.zz;
%}





