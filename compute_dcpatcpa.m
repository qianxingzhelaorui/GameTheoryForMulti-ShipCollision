function [d,t] = compute_dcpatcpa(v_own,course_own,v_target,course_target,dist,z_num) %���뱾�����������ٶȾ���ֵ���Ƕȡ������ľ��Ծ���
%% ������CPA���㣬ֻ�Ǹ��ݵ�ǰ��λ�úͺ��ٺ������CPA
x_1 = v_own*sind(course_own);  %��������ת��Ϊx��y����
y_1 = v_own*cosd(course_own);

x_2 = v_target*sind(course_target);
y_2 = v_target*cosd(course_target);

x = x_1-x_2;
y = y_1-y_2;  %��������ʾĿ�괬�뱾��������ٶ�


if z_num<=0
    
    d=dist;  
else
    d = dist*sind(course);
end
    t=dist*cosd(course)/sqrt(x^2+y^2);
end
    
end