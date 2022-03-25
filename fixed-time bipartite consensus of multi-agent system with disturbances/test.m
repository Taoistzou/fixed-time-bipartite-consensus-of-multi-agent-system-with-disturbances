%proof for lemma3 as an numrical example
A=[0 1 1;1 0 1;1 1 0];
L=diag(sum(A,2))-A;
 x1=1;
 x2=2;
 x3=3;
x=[x1 x2 x3].';
ans1=x.'*L*x;
ans2=1/2*((x2-x1)^2+(x3-x1)^2+(x1-x2)^2+(x3-x2)^2+(x1-x3)^2+(x2-x3)^2);
if ans1==ans2
    a=1
else
    a=2
end

%proof for lemma3 as an numrical example
A=[0 -1 1;-1 0 -1;1 -1 0];
L=diag(sum(abs(A),2))-A;
 x1=1;
 x2=2;
 x3=3;
x=[x1 x2 x3].';
ans1=x.'*L*x
ans2=1/2*((x2+x1)^2+(x3-x1)^2+(x1+x2)^2+(x3+x2)^2+(x1-x3)^2+(x2+x3)^2)
if ans1==ans2
    a=1
else
    a=2
end
    