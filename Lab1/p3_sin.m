clear all;
m=50;
frec=40;
% --- original ---
% Tsample= 3/frec ;
% --- Fixed ---
Tsample= 1/(frec*20) ;
n= -(m-1)/2: (m-1)/2;
nT= n* Tsample;
y=sin(2*pi*frec*nT);
plot(nT, y)
title('Señal Discreta');
xlabel ( 'nT')
ylabel ( 'Magnitud')
