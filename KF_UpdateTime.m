function KF = KF_UpdateTime(KF,INSData)
% �����µ�INS��Ϣ ����KF�� ʱ�����
% Inputs:   KF INSData 
% Output:   KF
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 1/1/2019

KF = KF_UpdateFt(KF,INSData);
KF.Fk = KF.Ft * INSData.ts;
KF.Phikk_1 = eye(size(KF.Ft)) + KF.Fk;

KF.Xkk_1 = KF.Phikk_1 * KF.Xk;
KF.Pkk_1 = KF.Phikk_1 * KF.Pk * KF.Phikk_1' + KF.Qk;

%������ʱ�����ʱ����ִ��һ��Ԥ�⣬Ҳ������
KF.Xk = KF.Xkk_1;
KF.Pk = KF.Pkk_1;

