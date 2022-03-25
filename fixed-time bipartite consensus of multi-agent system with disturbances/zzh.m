clear All
close All
clc
% x=[-8 -6 -2 2 6 8];
x=[-20 -15 10 -6 20 6];
A=1;
t=8;
x1=[];u2=[];
h=0.01;
Ts=0:h:t;
mu=0.5;eta=0.6;alpha=1.1;m=3;
for p=0:h:t
    x1=[x1;x];
    u1=[];u=0;
    for M=1:6
                if M==1
                    uv1_2=-1*sign(x1(A,2)-sign(-1)*x1(A,1))*abs((x1(A,2)-sign(-1)*x1(A,1)))^(2-1/m);
                    uv1_4=6*sign(x1(A,4)-sign(6)*x1(A,1))*abs((x1(A,4)-sign(6)*x1(A,1)))^(2-1/m);
                    uv1_6=7*sign(x1(A,6)-sign(7)*x1(A,1))*abs((x1(A,6)-sign(7)*x1(A,1)))^(2-1/m);
                    nv1_2=-1*sign(x1(A,2)-sign(-1)*x1(A,1))*abs((x1(A,2)-sign(-1)*x1(A,1)))^(1/m);
                    nv1_4=6*sign(x1(A,4)-sign(6)*x1(A,1))*abs((x1(A,4)-sign(6)*x1(A,1)))^(1/m);
                    nv1_6=7*sign(x1(A,6)-sign(7)*x1(A,1))*abs((x1(A,6)-sign(7)*x1(A,1)))^(1/m);
                    u=mu*(uv1_2+uv1_4+uv1_6)+eta*(nv1_2+nv1_4+nv1_6);
                    u1=[u1 u];
                end
                if M==2
                    uv2_1=-1*sign(x1(A,1)-sign(-1)*x1(A,2))*abs((x1(A,1)-sign(-1)*x1(A,2)))^(2-1/m);
                    uv2_3=2*sign(x1(A,3)-sign(2)*x1(A,2))*abs((x1(A,3)-sign(2)*x1(A,2)))^(2-1/m);
                    nv2_1=-1*sign(x1(A,1)-sign(-1)*x1(A,2))*abs((x1(A,1)-sign(-1)*x1(A,2)))^(1/m);
                    nv2_3=2*sign(x1(A,3)-sign(2)*x1(A,2))*abs((x1(A,3)-sign(2)*x1(A,2)))^(1/m);
                    u=mu*(uv2_1+uv2_3)+eta*(nv2_1+nv2_3);
                    u1=[u1 u];
                end
                if M==3
                    uv3_2=2*sign(x1(A,2)-sign(2)*x1(A,3))*abs((x1(A,2)-sign(2)*x1(A,3)))^(2-1/m);
                    uv3_4=-3*sign(x1(A,4)-sign(-3)*x1(A,3))*abs((x1(A,4)-sign(-3)*x1(A,3)))^(2-1/m);
                    nv3_2=2*sign(x1(A,2)-sign(2)*x1(A,3))*abs((x1(A,2)-sign(2)*x1(A,3)))^(1/m);
                    nv3_4=-3*sign(x1(A,4)-sign(-3)*x1(A,3))*abs((x1(A,4)-sign(-3)*x1(A,3)))^(1/m);
                    u=mu*(uv3_2+uv3_4)+eta*(nv3_2+nv3_4);
                    u1=[u1 u];
                end    
                if M==4
                    uv4_3=-3*sign(x1(A,3)-sign(-3)*x1(A,4))*abs((x1(A,3)-sign(-3)*x1(A,4)))^(2-1/m);
                    uv4_1=6*sign(x1(A,1)-sign(6)*x1(A,4))*abs((x1(A,1)-sign(6)*x1(A,4)))^(2-1/m);
                    uv4_5=-4*sign(x1(A,5)-sign(-4)*x1(A,4))*abs((x1(A,5)-sign(-4)*x1(A,4)))^(2-1/m);
                    nv4_3=-3*sign(x1(A,3)-sign(-3)*x1(A,4))*abs((x1(A,3)-sign(-3)*x1(A,4)))^(1/m);
                    nv4_1=6*sign(x1(A,1)-sign(6)*x1(A,4))*abs((x1(A,1)-sign(6)*x1(A,4)))^(1/m);
                    nv4_5=-4*sign(x1(A,5)-sign(-4)*x1(A,4))*abs((x1(A,5)-sign(-4)*x1(A,4)))^(1/m);
                    u=mu*(uv4_3+uv4_1+uv4_5)+eta*(nv4_3+nv4_1+nv4_5);
                    u1=[u1 u];
                end  
                if M==5
                    uv5_4=-4*sign(x1(A,4)-sign(-4)*x1(A,5))*abs((x1(A,4)-sign(-4)*x1(A,5)))^(2-1/m);
                    uv5_6=-2*sign(x1(A,6)-sign(-2)*x1(A,5))*abs((x1(A,6)-sign(-2)*x1(A,5)))^(2-1/m);
                    nv5_4=-4*sign(x1(A,4)-sign(-4)*x1(A,5))*abs((x1(A,4)-sign(-4)*x1(A,5)))^(1/m);
                    nv5_6=-2*sign(x1(A,6)-sign(-2)*x1(A,5))*abs((x1(A,6)-sign(-2)*x1(A,5)))^(1/m);
                    u=mu*(uv5_4+uv5_6)+eta*(nv5_4+nv5_6);
                    u1=[u1 u];
                 end  
                if M==6
                    uv6_5=-2*sign(x1(A,5)-sign(-2)*x1(A,6))*abs((x1(A,5)-sign(-2)*x1(A,6)))^(2-1/m);
                    uv6_1=7*sign(x1(A,1)-sign(7)*x1(A,6))*abs((x1(A,1)-sign(7)*x1(A,6)))^(2-1/m);
                    nv6_5=-2*sign(x1(A,5)-sign(-2)*x1(A,6))*abs((x1(A,5)-sign(-2)*x1(A,6)))^(2-1/m);
                    nv6_1=7*sign(x1(A,1)-sign(7)*x1(A,6))*abs((x1(A,1)-sign(7)*x1(A,6)))^(2-1/m);
                    u=mu*(uv6_5+uv6_1)+eta*(nv6_5+nv6_1);
                    u1=[u1 u];
                 end  
           end
                u2=[u2;u1];
                x(1,1)=x(1,1)+h*(u1(1,1));
                x(1,2)=x(1,2)+h*(u1(1,2));
                x(1,3)=x(1,3)+h*(u1(1,3));
                x(1,4)=x(1,4)+h*(u1(1,4));
                x(1,5)=x(1,5)+h*(u1(1,5));
                x(1,6)=x(1,6)+h*(u1(1,6));
                A=A+1;           
end
    figure
plot(Ts,x1,'LineWidth',2);
% xlabel('time(s)');ylabel('positions of agents');
% legend('agent1','agent2','agent1','agent4','agent5','agent6')

xlabel('时间/s');ylabel('智能体的运动状态轨迹');
legend('x1','x2','x1','x4','x5','x6')







grid on