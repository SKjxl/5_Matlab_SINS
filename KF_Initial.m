function KF = KFInitial(n,m)
% Kalman�˲�����ʼ��
% Inputs:   n ״̬ά�� m �۲�ά�� 
% Output:   KF
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 1/1/2019

if (n == 15)&&(m == 3)
    KF = [];
    KF.Ft = zeros(15,15);
    KF.Qt = zeros(15,15);                       %������������ �Ӽ� ������߲���
    
    KF.Fk = zeros(15,15);    
    KF.Phikk_1 = zeros(15,15);
    KF.Xk = zeros(15,1);
    KF.Pk = zeros(15,15);
    KF.Xkk_1 = zeros(15,1);
    KF.Pkk_1 = zeros(15,15);
    KF.Zk = zeros(3,1);
    KF.Hk = [zeros(3,6), eye(3), zeros(3,6)];   %����λ�÷���
    KF.Rk = zeros(3,3); 
    
    KF.Kk = zeros(15,3);
    KF.Qk = zeros(15,15);                       %��Ӧ��ɢ����Qt       
end
