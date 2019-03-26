function Plot_avp_Compare(avp0,avp1)
% �Ƚϻ��� �������ͼ�� ��̬ �ٶ� λ��
% Inputs:    
% Output:   
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 2/1/2019
global G_CONST  

    % ��ȡʱ�� x��
    t0 = avp0(:,10);
    t1 = avp1(:,10);
    

%% ������̬��Ϣ    
    %���Ƶ���ͼ�Ρ�����̬
    figure;
    plot(t0,avp0(:,1)*G_CONST.R2D,'r');
    hold on;
    plot(t1,avp1(:,1)*G_CONST.R2D);
    xlabel('\it t \rm / s');
    ylabel('\it \theta \rm / \circ');
    title('��̬-����');
    
    figure;
    plot(t0,avp0(:,2)*G_CONST.R2D,'r');
    hold on;
    plot(t1,avp1(:,2)*G_CONST.R2D);
    xlabel('\it t \rm / s');
    ylabel('\it \gamma \rm / \circ');
    title('��̬-���');

    figure;
    Yaw0 = avp0(:,3)*G_CONST.R2D;
    L0 = size(Yaw0);
    for i=1:L0
        if Yaw0(i,1) < 0.0
            Yaw0(i,1) = Yaw0(i,1) + 360.0;
        end
    end
    Yaw1 = avp1(:,3)*G_CONST.R2D;
    L1 = size(Yaw1);
    for i=1:L1
        if Yaw1(i,1) < 0.0
            Yaw1(i,1) = Yaw1(i,1) + 360.0;
        end
    end
    
    plot(t0,Yaw0,'r');
    hold on;
    plot(t1,Yaw1); 
    xlabel('\it t \rm / s');
    ylabel('\it \psi \rm / \circ');
    title('��̬-����');

%% �����ٶ���Ϣ     
    figure;
    plot(t0,avp0(:,4),'r');
    hold on;
    plot(t1,avp1(:,4));
    xlabel('\it t \rm / s');
    ylabel('\it V_E \rm / m/s');
    title('�ٶ�-����');

    figure;
    plot(t0,avp0(:,5),'r');
    hold on;
    plot(t1,avp1(:,5));
    xlabel('\it t \rm / s');
    ylabel('\it V_N \rm / m/s');
    title('�ٶ�-����');

    figure;
    plot(t0,avp0(:,6),'r');
    hold on;
    plot(t1,avp1(:,6));
    xlabel('\it t \rm / s');
    ylabel('\it V_U \rm / m/s');
    title('�ٶ�-����');
    
    figure;
    plot(t0,(sqrt(avp0(:,4).^2+avp0(:,5).^2+avp0(:,6).^2)),'r*');
    hold on;
    plot(t1,(sqrt(avp1(:,4).^2+avp1(:,5).^2+avp1(:,6).^2)));
    xlabel('\it t \rm / s');
    ylabel('\it V \rm / m/s');
    title('�����ٶ�');

%% ����λ����Ϣ  
    %��ʻ·��ͼ
    figure;
    plot(0, 0, 'rp');     %����ʼλ�û�һ�� �����
    legend(sprintf('%.6f, %.6f / ��', avp0(1,8)*G_CONST.R2D,avp0(1,7)*G_CONST.R2D));
    hold on;    
    plot((avp0(:,8)-avp0(1,8))*G_CONST.earth_Re*cos(avp0(1,7)), (avp0(:,7)-avp0(1,7))*G_CONST.earth_Re,'r');
    hold on;    
    plot((avp1(:,8)-avp1(1,8))*G_CONST.earth_Re*cos(avp1(1,7)), (avp1(:,7)-avp1(1,7))*G_CONST.earth_Re);  
    xlabel('\it East \rm / m');
    ylabel('\it North \rm / m');
    title('��ʻ·��');
    %����λ����Ϣ
    figure;  
    plot(t0,(avp0(:,8)-avp0(1,8))*G_CONST.earth_Re*cos(avp0(1,7)),'r');
    hold on;    
    plot(t1,(avp1(:,8)-avp1(1,8))*G_CONST.earth_Re*cos(avp1(1,7)));
    xlabel('\it t \rm / s');
    ylabel('\it ������ʻ���� \rm / m');
    title('��ʻ·��');
    %����λ����Ϣ
    figure;
    plot(t0,(avp0(:,7)-avp0(1,7))*G_CONST.earth_Re,'r');
    hold on;    
    plot(t1,(avp1(:,7)-avp1(1,7))*G_CONST.earth_Re);
    xlabel('\it East \rm / m');
    ylabel('\it ������ʻ���� \rm / m');       
    %λ�ñȽ�
    figure;
    plot(t0,avp0(:,9),'r');
    hold on;
    plot(t1,avp1(:,9));
    xlabel('\it t \rm / s');
    ylabel('\it �߳� \rm / m');
    title('�߳���Ϣ');
    
    