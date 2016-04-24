len=length(user_roles);

for  i=1:1:len
    user_struct(i)=struct('ocean', zeros(1,5), 'role', 'role');
    user_struct(i).ocean=user_roles(i,1:5);
    if(user_roles(i,6)==1)
        user_struct(i).role='architect';
    end
    if(user_roles(i,6)==2)
        user_struct(i).role='developer';
    end
    if(user_roles(i,6)==3)
        user_struct(i).role='tester';
    end
end