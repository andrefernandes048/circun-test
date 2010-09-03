%Encontrar o Baricentro de um triangulo e plotar uma circunferencia
%
%
%Entradas: Pontos do Triangulo -- p1,p2 e p3
%
%Saidas: Area -- Lados -- Gráfico
%
%
%Autor: André F. de Almeida
%Data: 03/09/2010
%
%
clear all;clc;close all;
%
%
%dado p1, p2 e p3 construa o triangulo e encontre sua area via LLL
p1=input('Entre com P1=');
p2=input('Entre com P2=');
p3=input('Entre com P3=');
%
%
%plotando reta entre p1 e p2
plot([p1(1),p2(1)],[p1(2),p2(2)],'linewidth',1.2);
hold on
%
%
%plotando reta entre p1 e p3
plot([p1(1),p3(1)],[p1(2),p3(2)],'linewidth',1.2);
%
%
%plotando reta entre p2 e p3
plot([p2(1),p3(1)],[p2(2),p3(2)],'linewidth',1.2);
hold on
%
%
%achando os lados
l1=sqrt((p1(1)-p2(1))^2+(p1(2)-p2(2))^2);
l2=sqrt((p1(1)-p3(1))^2+(p1(2)-p3(2))^2);
l3=sqrt((p2(1)-p3(1))^2+(p2(2)-p3(2))^2);
%
%
%calculando a area do triangulo
p=(l1+l2+l3)/2;
area=sqrt(p*(p-l1)*(p-l2)*(p-l3));
%
%
%calculando as medias aritmeticas
m1=[((p1(1)+p2(1))/2),((p1(2)+p2(2))/2)];
m2=[((p1(1)+p3(1))/2),((p1(2)+p3(2))/2)];
m3=[((p2(1)+p3(1))/2),((p2(2)+p3(2))/2)];
%
%
%plotando reta entre p1 e m3
plot([p1(1),m3(1)],[p1(2),m3(2)],'k','linewidth',1.2);
hold on
%
%
%plotando reta entre p2 e m2
plot([p2(1),m2(1)],[p2(2),m2(2)],'k','linewidth',1.2);
%
%
%plotando reta entre p3 e m1
plot([p3(1),m1(1)],[p3(2),m1(2)],'k','linewidth',1.2);
hold on
%calculando os coeficientes angulares das medianas
coef1=(m1(2)-p3(2))/(m1(1)-p3(1));
coef2=(m2(2)-p2(2))/(m2(1)-p2(1));
coef3=(m3(2)-p1(2))/(m3(1)-p1(1));
%
%
%calculando o centro da circunferencia
x1=(coef1*m1(1)-coef2*m2(1)-m1(2)+m2(2))/(coef1-coef2);
y1=coef3*x1-coef3*m3(1)+m3(2);
c=[x1,y1];
%
%
%calculando o raio da circunferencia
r=area/p;
%
%
%plotando a circunferencia
t=linspace(0,2*pi,1000);
x=x1+r*cos(t);
y=y1+r*sin(t);
plot(x,y,'r','linewidth',1.5);axis equal;