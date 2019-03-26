function w_ie_n = earth_get_w_ie_n(pos)
% ���������ת���ٶ���nϵ�µ�ͶӰw_ie_n
%       ��������nϵ���� ������
% Inputs:   pos = [lat;lon;h] γ�ȡ����ȡ��̣߳���λ���� m
% Output:   w_ie_n = [x;y;z]      ��λ ����/s 
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018
global G_CONST

w_ie_n = [0; G_CONST.earth_wie*cos(pos(1,1)); G_CONST.earth_wie*sin(pos(1,1))];

