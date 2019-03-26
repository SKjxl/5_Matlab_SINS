function Plot_bias_compare(bias0,bias1)
% KF�˲���Ϣ ���жԱ�
% Inputs:    
% Output:   
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 2/1/2019
global G_CONST  

%��ȡʱ��x��
t0 = bias0(:,7);
t1 = bias1(:,7);

%% ������ƫ��������
    %X��������ƫ 
    figure;
    plot(t0,bias0(:,1) /(pi / 180.0 / 3600.0),'r');
    hold on;
    plot(t1,bias1(:,1)/(pi / 180.0 / 3600.0));    
    xlabel('\it t \rm / s');
    ylabel('\it GyroBias_X \rm / \circ/h');
    title('KF�˲�-X��������ƫ����');
    
    figure;
    plot(t0,bias0(:,2) /(pi / 180.0 / 3600.0),'r');
    hold on;
    plot(t1,bias1(:,2)/(pi / 180.0 / 3600.0));    
    xlabel('\it t \rm / s');
    ylabel('\it GyroBias_Y \rm / \circ/h');
    title('KF�˲�-Y��������ƫ����');   
    
    figure;
    plot(t0,bias0(:,3) /(pi / 180.0 / 3600.0),'r');
    hold on;
    plot(t1,bias1(:,3)/(pi / 180.0 / 3600.0));    
    xlabel('\it t \rm / s');
    ylabel('\it GyroBias_Z \rm / \circ/h');
    title('KF�˲�-Z��������ƫ����');
    
 %% �Ӽ���ƫ��������
    %X��Ӽ���ƫ    
    figure;
    plot(t0,bias0(:,4)*1e5,'r');
    hold on;
    plot(t1,bias1(:,4)*1e5);    
    xlabel('\it t \rm / s');
    ylabel('\it AccBias_X \rm / mGal');
    title('KF�˲�-X��Ӽ���ƫ����');
    
    figure;
    plot(t0,bias0(:,5)*1e5,'r');
    hold on;
    plot(t1,bias1(:,5)*1e5);    
    xlabel('\it t \rm / s');
    ylabel('\it AccBias_Y \rm / mGal');
    title('KF�˲�-Y��Ӽ���ƫ����');   
    
    figure;
    plot(t0,bias0(:,6)*1e5,'r');
    hold on;
    plot(t1,bias1(:,6)*1e5);    
    xlabel('\it t \rm / s');
    ylabel('\it AccBias_Z \rm / mGal');
    title('KF�˲�-Z��Ӽ���ƫ����');
    
    
    
    