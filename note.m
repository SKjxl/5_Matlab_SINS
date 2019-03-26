clear all;

%% ���Զ��������ݶ�ȡ��ת��
% fid = fopen("E:\pos80_GNSS_OUT.bin",'r');
% NavData = zeros(569575,10);
% i = 1
% while feof(fid) == 0
%     [Nav,count] = fread(fid,10,'double'); 
%     NavData(i,:) = Nav';
%     i = i+1;
% end

%% ʵ���ȡ�������ļ�
%     fid = fopen("E:\2_WorkSpace_Leo\Matlab\Matlab_SINS\data\pos80.bin",'r');
%     imudata = zeros(1153372,7);
%     i = 1;
%     while feof(fid) == 0
%     [imu,count] = fread(fid,7,'double');
%     imudata(i,:) = imu';
%     i = i+1;
%     end
% %    load('E:\2_WorkSpace_Leo\Matlab\Matlab_SINS\data\imudata_pos80');

%% ����ȫ�ֱ���
% global G_CONST
% G_CONST = const_initial();
% POS = vector_initial(30*pi/180,150*pi/180,100);
% vn = vector_initial(15,30,5);

%% �����������

% Rmh = earth_get_Rmh(POS);
% Rnh = earth_get_Rnh(POS);
% w_ie_n = earth_get_w_ie_n(POS);
% w_en_n = earth_get_w_en_n(POS,vn,Rmh,Rnh);
% w_in_n = earth_get_w_in_n(POS,vn,Rmh,Rnh);
% g_ = earth_get_g_n(POS);

%% IMU����������

%     INPUT_CONFIG_IMU.gyr_bias     = 0.01;      %������ƫ                    ��׼���뵥λ��deg/h
%     INPUT_CONFIG_IMU.gyr_arw      = 0.001;      %���ݽǶ��������             ��׼���뵥λ��deg/sqrt(h)
%     INPUT_CONFIG_IMU.gyr_sqrtROG  = 0.001;      %����һ������Ʒ�����         ��׼���뵥λ��deg/h/sqrt(h)
%     INPUT_CONFIG_IMU.gyr_TauG     = 1000;      %����һ������Ʒ��������ʱ�� ��׼���뵥λ��s
%     INPUT_CONFIG_IMU.gyr_dKG.xx   = 1.0e5*10;      %����x�ķ����Կ̶�����        ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.xy   = 0.0;      %����x�ᵽy��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.xz   = 0.0;      %����x�ᵽz��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.yx   = 0.0;      %����y�ᵽx��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.yy   = 1.0e5*10;      %����y�ķ����Կ̶�����        ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.yz   = 0.0;      %����y�ᵽz��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.zx   = 0.0;      %����z�ᵽx��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.zy   = 0.0;      %����z�ᵽy��ķ���������     ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.gyr_dKG.zz   = 1.0e5*10;      %����z�ķ����Կ̶�����        ��׼���뵥λ���ޣ�ֱ��ת��Ϊ��У���
%     INPUT_CONFIG_IMU.acc_bias     = 50.0;      %�Ӽ���ƫ                    ��׼���뵥λ��ug
%     INPUT_CONFIG_IMU.acc_arw      = 10.0;      %�Ӽ��ٶ��������             ��׼���뵥λ��ug/sqrt(Hz)
%     INPUT_CONFIG_IMU.acc_sqrtROG  = 10.0;      %�Ӽ�һ������Ʒ�����         ��׼���뵥λ��ug
%     INPUT_CONFIG_IMU.acc_TauG     = 1000.0;      %�Ӽ�һ������Ʒ��������ʱ�� ��׼���뵥λ��s
%     INPUT_CONFIG_IMU.acc_dKG.xx   = 1.0e5*10;
%     INPUT_CONFIG_IMU.acc_dKG.xy   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.xz   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.yx   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.yy   = 1.0e5*10;
%     INPUT_CONFIG_IMU.acc_dKG.yz   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.zx   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.zy   = 0.0;
%     INPUT_CONFIG_IMU.acc_dKG.zz   = 1.0e5*10;    
% CONFIG_IMU = config_imu_set(INPUT_CONFIG_IMU);


%}

%% ��ͼ����
global G_CONST                                          %macro definition
    G_CONST = Initial_CONST();
    Plot_avp(navresultFirst);
    Plot_avp_Compare(navresultFirst,navresultSecond);


    