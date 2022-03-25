clear All
close All
clc
x=[-8 -6 -2 2 6 8]*10;
% x=[-20 -15 10 -6 20 6];
A=1;
t=4;
x1=[];u2=[];
h=0.001;%%%步长太大如h=0.01，呈现发散结果,步长太小仿真时间较长，因此合理取步长的值h=0.001
Ts=0:h:t;
mu=0.5;eta=0.6;alpha=6.1;m=3;
for p=0:h:t
    x1=[x1;x];
    u1=[];u=0;
    for M=1:6
                if M==1
                    usum=-1*(x1(A,2)-sign(-1)*x1(A,1))+6*(x1(A,4)-sign(6)*x1(A,1))+7*(x1(A,6)-sign(7)*x1(A,1));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u];
                end
                if M==2
                    usum=-1*(x1(A,1)-sign(-1)*x1(A,2))+2*(x1(A,3)-sign(2)*x1(A,2));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u];
                end
                if M==3
                    usum=2*(x1(A,2)-sign(2)*x1(A,3))-3*(x1(A,4)-sign(-3)*x1(A,3));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u]; 
                end    
                if M==4
                    usum=-3*(x1(A,3)-sign(-3)*x1(A,4))+6*(x1(A,1)-sign(6)*x1(A,4))-4*(x1(A,5)-sign(-4)*x1(A,4));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u];
                end  
                if M==5
                    usum=-4*(x1(A,4)-sign(-4)*x1(A,5))-2*(x1(A,6)-sign(-2)*x1(A,5));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u]; 
                 end  
                if M==6
                    usum=-2*(x1(A,5)-sign(-2)*x1(A,6))+7*(x1(A,1)-sign(7)*x1(A,6));
                    u=mu*sign(usum)*abs(usum)^(2-1/m)+eta*sign(usum)*abs(usum)^(1/m)+alpha*sign(usum);
                    u1=[u1 u];
                 end  
           end
                u2=[u2;u1];
    %            di=0
%                 x(1,1)=x(1,1)+h*(u1(1,1));
%                 x(1,2)=x(1,2)+h*(u1(1,2));
%                 x(1,3)=x(1,3)+h*(u1(1,3));
%                 x(1,4)=x(1,4)+h*(u1(1,4));
%                 x(1,5)=x(1,5)+h*(u1(1,5));
%                 x(1,6)=x(1,6)+h*(u1(1,6));              
                
                
                
                
                
% % % %                 di=0.1
%                 x(1,1)=x(1,1)+h*(u1(1,1)+0.1);
%                 x(1,2)=x(1,2)+h*(u1(1,2)+0.1);
%                 x(1,3)=x(1,3)+h*(u1(1,3)+0.1);
%                 x(1,4)=x(1,4)+h*(u1(1,4)+0.1);
%                 x(1,5)=x(1,5)+h*(u1(1,5)+0.1);
%                 x(1,6)=x(1,6)+h*(u1(1,6)+0.1);

% % % %                 di=sin(it) i=1,2,3,4,5,6          
                x(1,1)=x(1,1)+h*(u1(1,1)+sin(h));
                x(1,2)=x(1,2)+h*(u1(1,2)+sin(2*h));
                x(1,3)=x(1,3)+h*(u1(1,3)+sin(3*h));
                x(1,4)=x(1,4)+h*(u1(1,4)+sin(4*h));
                x(1,5)=x(1,5)+h*(u1(1,5)+sin(5*h));
                x(1,6)=x(1,6)+h*(u1(1,6)+sin(6*h));
                A=A+1;           
end
figure(1)
plot(Ts,x1,'LineWidth',2);
xlabel('时间(s)');ylabel('智能体的位置');
legend('$x_1$','$x_2$','$x_3$','$x_4$','$x_5$','$x_6$','interpreter','latex','linewidth',1.5,'fontsize',15);
% grid on