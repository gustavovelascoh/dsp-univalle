% Calcula 2m+1 muestras de la funcion sin(2*pi*fl*t)/(pi*t)
% para n=-m : m (es decir, centrado alrededor del origen).
% fc :Frecuencia de corte [Hz] asociada a un filtro paso bajo
%       :normalizada entre 0 y 1 respecto a la frecuencia de muestreo, por lo tanto la
%       :frecuencia maxima permitida es fc=0.5.
% x :salida, muestras de la funcion sinc

clear all;
m=50;
fc=0.25;
wc=fc*2*pi;
n=(-m:m);
%2m+1 instantes de muestreo centrado alrededor de cero
xn=sin(wc * n);
xd=pi*n;
x(1:m)= xn(1:m)./ xd(1:m) ;
x(m+1)=2*fc ;
x(m+2:2*m+1)= xn(m+2:2*m+1)./ xd(m+2:2*m+1) ;
% graficar señal
figure ;
stem(n, x);
title( strcat('Generacion de la Señal Sinc -- fc= ', num2str(fc) ) );
xlabel ('Instantes n');
ylabel ('Señal Sinc'),
