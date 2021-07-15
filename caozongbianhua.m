% function [c]=compute_c(boat,num)
%% ����-�������ֶ��ʱ��tStep��ĺ���仯
tStart = 0;    % (s) Start time  %��ʼʱ��
tEnd   = 10;  % (s) End time    %����ʱ��
tStep  = 1; % (s) Time step    %ʱ�䲽��
nStep  = (tEnd - tStart)/tStep + 1;% ����

ship.heading = zeros(nStep,1);%�洢�����
ship.r = zeros(nStep,1);%�洢������ٶ�

x10 = 0;%�����ֵ
x20 = 0;%������ٶȳ�ֵ
x30 = 0;%ʵ�ʶ�ǳ�ֵ   
x40 = 25;%���ָ�ֵ
%% ����
    for ii = 1:nStep
%         if x10 > 20
%             x40 = -20; %���ָ�ֵ
%         end
%         if x10 < -20
%             x40 = 20; %���ָ�ֵ
%         end
        [tt,z] = ode45(@KTmodel_E,[(ii-1)*tStep ii*tStep],[x10;x20;x30;x40]);%���ode45(@m�ļ����������䣬��ʼ����)
        [m,n] = size(z);
        x10 = z(m,1);
        x20 = z(m,2);
        x30 = z(m,3);
        lssvm_ship.heading(ii,1) = x10;
        lssvm_ship.r(1,ii) = x20;
        lssvm_ship.rudder(1,ii) = x30;
    end
   %% ��ʾ
   figure(1)
plot(1:tEnd/tStep+1, lssvm_ship.heading ,'r-','LineWidth',2);
grid minor;%������
xlabel('t/s (-)');
ylabel('heading/deg (-)');
title('Ship Course');
%    end