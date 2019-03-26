function Rmh = earth_get_Rmh(pos)
% ����Rnh
% Inputs:   pos = [lat;lon;h] γ�ȡ����ȡ��̣߳���λ���� m
% Output:   Rmh     ��λ m
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018
global G_CONST

Rmh = G_CONST.earth_Re*(1-G_CONST.earth_e^2)/(1-G_CONST.earth_e^2*sin(pos(1,1))^2)^1.5 + pos(3,1);

    
