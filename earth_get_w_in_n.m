function w_in_n = earth_get_w_in_n(pos,vn,Rmh,Rnh)
% ����nϵ���iϵ��ת�ٶ���nϵ�µ�ͶӰw_in_n ˳�������w_ie_n w_en_n
%       ��������nϵ���� ������
% Inputs:   pos = [lat;lon;h] γ�ȡ����ȡ��̣߳���λ���� m
%           vn = [x;y;z] ������Ե����ٶ���nϵ�µ�ͶӰ����λ���� m
% Output:   w_in_n = [x;y;z]      ��λ ����/s 
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018

w_ie_n = earth_get_w_ie_n(pos);
w_en_n = earth_get_w_en_n(pos,vn,Rmh,Rnh);
w_in_n = w_ie_n+w_en_n;



