function [ d ] = caozong( boat,num )
%CAOZONG �˴���ʾ�йش˺�����ժҪ
%   ���봬����ǰλ�ú��ٶȺ���󣬼��㴬���ھ���ʱ���ɴﵽ��λ��
weizhi=boat(num,1:6);
x=weizhi(1,1);
y=weizhi(1,2);
v=weizhi(1,3);
c=weizhi(1,4);
t=weizhi(1,5);

Ks=0.48;
Ts=216.58;
c_zhuan=Ks*c0*(t-Ts+Ts*exp(t/Ts));  %c_zhuanΪת���Ƕȡ�Ks��TsΪ�����̶���ʱ�䳣����tΪʱ��,c0Ϊ���



end

