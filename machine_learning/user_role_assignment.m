len=length(ocean);

for i=1:1:len
    result=net(ocean(i,1:5)');
    index=0;
    dists=zeros(5,1);
    for j=1:1:49
        if(result(j)==1)
            index=j;
            break;
        end
    end
    
    if(index>0)
        dist(1)=distances(index,5); %arch
        dist(2)=distances(index,22); %dev
        dist(3)=distances(index,37); %test
        dist(4)=distances(index,19); %alg
        dist(5)=distances(index,47); %sale
    end
    
    user_roles(i,1:5)=ocean(i,1:5);
    [val,idx]=min(dist);
    user_roles(i,6)=idx;
        
end