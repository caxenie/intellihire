len=length(ocean);
hits=zeros(49,1);
for i=1:1:len
    result=net(ocean(i,1:5)');
    index=0;
    archdist=0;
    devdist=0;
    testdist=0;
    for j=1:1:49
        if(result(j)==1)
            index=j;
            break;
        end
    end
    
    hits(index)=hits(index)+1;
    
%     
%     if(index>0)
%         archdist=distances(index,29);
%         devdist=distances(index,52);
%         testdist=distances(index,91);
%     end
%     
%     user_roles(i,1:5)=ocean(i,1:5);
%     if(archdist<=devdist && archdist<=testdist)
%         
%         user_roles(i,6)=1;
%     elseif(devdist<archdist && devdist<testdist)
%             user_roles(i,6)=2;
%     else
%             user_roles(i,6)=3;
%     end
        
end