function [d,t] = compute_dcpatcpa(v_own,course_own,v_target,course_target,dist,z_num) %输入本船和他船的速度绝对值、角度、两船的绝对距离
%% 基本的CPA计算，只是根据当前的位置和航速航向计算CPA
x_1 = v_own*sind(course_own);  %将极坐标转化为x，y向量
y_1 = v_own*cosd(course_own);

x_2 = v_target*sind(course_target);
y_2 = v_target*cosd(course_target);

x = x_1-x_2;
y = y_1-y_2;  %用向量表示目标船与本船的相对速度


if z_num<=0
    
    d=dist;  
else
    d = dist*sind(course);
end
    t=dist*cosd(course)/sqrt(x^2+y^2);
end
    
end