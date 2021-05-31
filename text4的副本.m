%%���䷽����LCR
clc;
clear;
x=zeros(1,40);
y=zeros(1,40);
% m=0.5;
M=[0.5,1,2,3];
colors=['r','g','b','k'];
for j=1:1:4
    m=M(1,j);
%     m=5;
for i=1:1:40
    if i<40
     x(1,1)=10^(-3);
     y(1,i)=(sqrt(2*pi)*(m.^(m-0.5))*(x(1,i).^(2*m-1))*exp(-m*(x(1,i).^2)))/gamma(m);
     x(1,i+1)=x(1,i)*(10^(0.1));
    else
     y(1,i)=(sqrt(2*pi)*(m.^(m-0.5))*(x(1,i).^(2*m-1))*exp(-m*(x(1,i).^2)))/gamma(m);
    end
end
x=10*log10(x);
% y=y./max(y);
% plot(x,y,colors(1,3));
semilogy(x,y,colors(1,j))
axis([-30 10 0.001 10]);
% plot(x,y,colors(1,j));
%  axis normal;

z = 1;
hold on
end