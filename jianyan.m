function [z] = jianyan(boat,num,ship_num )         %输入需要检验是否发生航道冲突的船舶的序号
%JIANYAN 此处显示有关此函数的摘要
%   在boat的输入参数中，假如两条航线平行或相反输出0即无交点，航向有相交，且相交点是前方输出1，相交点在后方输出-1
shuju=boat(num,1:4);
x1=shuju(1,1);
y1=shuju(1,2);

course1=shuju(1,4);

z=cell(num,2);
if course1==0||course1==180
    
    for i=1:ship_num
        x2=boat(i,1);
        y2=boat(i,2);
        course2=boat(i,4);
        if course2==0||course2==180
           
            if x1==x2
               
                v1=[sin(boat(i,3)),cos(boat(i,3))];
                v2= [x1-x2,y1-y2];
                if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                    z(i,1) = 1 ;    % 共线点积为|v1||v2|
                else
                    z(i,1)= -1;
                end
                   
            else
                z(i,1)=0;   %象征2船航线平行
            end
            
        else
            k2=tan(pi/2-course2*pi/180);
            b2=y2-k2*x2;
            x_jiao=x1;
            y_jiao=k2*x1+b2;
            
            v1=[sin(boat(i,3)),cos(boat(i,3))];
            v2= [x_jiao-x2,y_jiao-y2];
            
            if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                z(i,1) = 1 ;    % 共线点积为|v1||v2|
            else
                z(i,1)= -1;
            end
            
            
        end
        
    end
    
else
    
  
 for i=1:ship_num
        x2=boat(i,1);
        y2=boat(i,2);
        course2=boat(i,4);
        
        k1=tan(pi/2-course1*pi/180);            
        b2=y1-k1*x1;
        if course2==0||course2==180
           
           x_jiao=x2;
           y_jiao=k1*x2+b1;
           v1=[sin(boat(i,3)),cos(boat(i,3))];
           v2= [x_jiao-x2,y_jiao-y2];
            
            if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                z(i,1) = 1 ;    % 共线点积为|v1||v2|
            else
                z(i,1)= -1;
            end
    
            
        else
            k2=tan(pi/2-course2*pi/180);
            b2=y2-k2*x2;
            

      
            if k1==k2&&b1==b2
                v1=[sin(boat(i,3)),cos(boat(i,3))];
                v2= [x1-x2,y1-y2];
                if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                    z(i,1) = 1 ;    % 共线点积为|v1||v2|
                else
                    z(i,1)= -1;
                end
            else
                if  k1==k2&&b1~=b2
                z(i,1) =0;
                else
               x_jiao=(b2-b1)/(k1-k2);
               y_jiao=k1*x+b1;
               
               
               v1=[sin(boat(i,3)),cos(boat(i,3))];
               v2= [x_jiao-x2,y_jiao-y2];
               
               if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                   z(i,1) = 1 ;    % 共线点积为|v1||v2|
               else
                   z(i,1)= -1;
               end
               
                end
                
            end
            
        else
            
            
            k2=tan(pi/2-course2*pi/180);
            b2=y2-k2*x2;
            x_jiao=(b2-b1)/(k1-k2);
            y_jiao=k1*x+b1;
            
            v1=[sin(boat(i,3)),cos(boat(i,3))];
            v2= [x_jiao-x2,y_jiao-y2];
            
            if ((dot(v1,v2)/ norm(v1) / norm(v2))==1)
                z(i,1) = 1 ;    % 共线点积为|v1||v2|
            else
                z(i,1)= -1;
            end
            
            
        end
        
    end
    
end



