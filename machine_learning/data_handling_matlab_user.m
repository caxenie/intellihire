%Init
fID = 'ID';
fage = 'age';
fcountry = 'country';
fgender = 'gender';
fjob = 'job';
focean = 'ocean';


ID=0;
age=0;
country=0;
gender=0;
OCEAN=zeros(1,5);

count=19719; %must be 19719 for the whole set

for i=1:1:count
    [age,gender,country,OCEAN] = importfile('data.csv', i+1,i+1);
    user_unsorted(i)=struct(fID, i, fage, age, fcountry, country, fgender, gender,fjob, 0, focean, OCEAN);    
end

sort_count=0;
for i=1:1:count
    if(user_unsorted(i).age>=18 && user_unsorted(i).age<=45)
        sort_count=sort_count+1;
        user_sorted(sort_count)=struct(fID, 0, fage, 0, fcountry, '', fgender, 0,fjob, 0, focean, zeros(1,5));
        user_sorted(sort_count).ID=sort_count;
        user_sorted(sort_count).age=user_unsorted(i).age;
        user_sorted(sort_count).country=user_unsorted(i).country;
        user_sorted(sort_count).gender=user_unsorted(i).gender;
        user_sorted(sort_count).ocean=user_unsorted(i).ocean;
        
        age=user_sorted(sort_count).age;
        %job:    1=Sales
        %       2=tester
        %       3=Algorithms
        %       4=Developer
        %       5=Architect
        if(age>=18)
            job=2;
        end
        if(age>20)
            job=4;
        end
        if(age>30)
            job=3;
        end
        if(age>35)
            job=1;
        end
        if(age>40)
            job=5;
        end
        user_sorted(sort_count).job=job;
    end
end

for i=1:1:sort_count
    train_struct(i)=struct(fjob, 0, focean, zeros(1,5));
    train_struct(i).job=user_sorted(i).job;
    train_struct(i).ocean=user_sorted(i).ocean;
end

save('train_struct.mat','train_struct');
