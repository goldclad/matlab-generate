r1 = randi([3 8]); % 片的个数
r_id = randi([6 59],1,r1); % 片的x坐标
r = randi([1 64-10],2,r1);% 片的长和宽
M=zeros(64,64,64);
for i=1:r1
    r_length=r(1,i); r_width=r(2,i);
    z_range1=6;
    z_range2=59-r_length+1;
    y_range1=6;
    y_range2=59-r_width+1;
    z_id=randi([z_range1 z_range2]);
    y_id=randi([y_range1 y_range2]);
    M(r_id(i),y_id:y_id+r_width-1,z_id:z_id+r_length-1)=ones(r_width,r_length);
end


