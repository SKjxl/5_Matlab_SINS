function [GPSData] = Initial_GPSData()
% IMU���ݼ���������ʼ��
% Inputs:   
% Output:   imu���� �� ������
%
% Copyright(c) 2018, by Chengbin Wang, All rights reserved.
% Department of Precision Instrument Engineering Research Center for 
% Navigation Technology,Tsinghua University,Bei Jing, P.R.China
% 25/12/2018

load('E:\2_WorkSpace_Leo\Matlab\Matlab_SINS\data\gps');
GPSData = GNSS;

