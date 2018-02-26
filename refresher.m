x=[1,2,3];
y=[4;5;6];
z=[1 4;2 5;3 6];
prompt='Enter input';
x1=input(prompt);
x2=randi([10 15],3,3);
x2(2:);
%%
%% 
publish(signals,pdf);


%%
option=input('');
function ans=mycalc(a,b)
if a == 1
    ans = sum(b);
end
else
    ans=product(b*b);
end

end

    