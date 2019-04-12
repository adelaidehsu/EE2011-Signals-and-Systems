%Q1
Ts=0.002;
f1=100;
n=1:1:1000;
x= cos(2*pi*(n - 1)*Ts) + 2*cos(2*pi*f1*(n - 1)*Ts);
fdatool;
%designed the lowpass filter using fdatool
[b,a]=sos2tf(SOS, G);
y=filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel('y[n]');
title('Output signal of x (lowpass)');
%Q2
fdatool;
%after designed the bandpass filter using fdatool
[b,a]=sos2tf(SOS, G);
y=filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel('y[n]');
title('Filtered signal of x (bandpass)');
