function w_en_n = earth_get_w_en_n(pos,vn,Rmh,Rnh)
% ����nϵ���eϵ��ת�ٶ���nϵ�µ�ͶӰw_en_n
%       ��������nϵ���� ������
% Inputs:   pos = [lat;lon;h] γ�ȡ����ȡ��̣߳���λ���� m
%           vn = [x;y;z] ������Ե����ٶ���nϵ�µ�ͶӰ����λ���� m
% Output:   w_en_n = [x;y;z]      ��λ ����/s 
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 22/12/2018

w_en_n = [-vn(2,1)/Rmh;vn(1,1)/Rnh;vn(1,1)/Rnh*tan(pos(1,1))];
