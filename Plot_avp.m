function Plot_avp(avp)
% ���ƽ������ͼ�� ��̬ �ٶ� λ��
% Inputs:    
% Output:   
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 2/1/2019
global G_CONST  

    % ��ȡʱ�� x��
    t = avp(:,10);

%% ������̬��Ϣ    
    %���Ƶ���ͼ�Ρ�����̬
    figure;
    plot(t,avp(:,1)*G_CONST.R2D);
    xlabel('\it t \rm / s');
    ylabel('\it \theta \rm / \circ');
    title('��̬-����');
    
    figure;
    plot(t,avp(:,2)*G_CONST.R2D);
    xlabel('\it t \rm / s');
    ylabel('\it \gamma \rm / \circ');
    title('��̬-���');

    figure;
    Yaw = avp(:,3)*G_CONST.R2D;
    L = size(Yaw);
    for i=1:L
        if Yaw(i,1) < 0.0
            Yaw(i,1) = Yaw(i,1) + 360.0;
        end
    end
    plot(t,Yaw);
    xlabel('\it t \rm / s');
    ylabel('\it \psi \rm / \circ');
    title('��̬-����');

%% �����ٶ���Ϣ     
    figure;
    plot(t,avp(:,4));
    xlabel('\it t \rm / s');
    ylabel('\it V_E \rm / m/s');
    title('�ٶ�-����');

    figure;
    plot(t,avp(:,5));
    xlabel('\it t \rm / s');
    ylabel('\it V_N \rm / m/s');
    title('�ٶ�-����');

    figure;
    plot(t,avp(:,6));
    xlabel('\it t \rm / s');
    ylabel('\it V_U \rm / m/s');
    title('�ٶ�-����');
    
    figure;
    plot(t,(sqrt(avp(:,4).^2+avp(:,5).^2+avp(:,6).^2)));
    xlabel('\it t \rm / s');
    ylabel('\it V \rm / m/s');
    title('�����ٶ�');

%% ����λ����Ϣ  
    figure;
    plot(0, 0, 'rp');     %����ʼλ�û�һ�� �����
    legend(sprintf('%.6f, %.6f / ��', avp(1,8)*G_CONST.R2D,avp(1,7)*G_CONST.R2D));
    hold on;
    plot((avp(:,8)-avp(1,8))*G_CONST.earth_Re*cos(avp(1,7)), (avp(:,7)-avp(1,7))*G_CONST.earth_Re);
    xlabel('\it East \rm / m');
    ylabel('\it North \rm / m');

    
    
    
