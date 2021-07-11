function distance=compute_distance(boat,num,ship_num)
   weizhi=boat(num,1:2);
   x1=weizhi(1,1);
   y1=weizhi(1,2);
   dist=zeros(num,1);
   for i=1:ship_num
       x2=boat(i,1);
       y2=boat(i,2);
       
    dist(i,1)=((x1-x2)^2+(y1-y2)^2)^0.5;
    
   end
   distance=dist;
end