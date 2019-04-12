%a
T=100;
N=1001;
N1=500;
Ts=T/N1;
y=zeros(1,N);
for n=-N1:1:N1;
y(n+N1+1)= sinc(n*Ts);
end
n=-N1:1:N1;
plot(n,y);
xlable('n');

Tw=T/2;
y2=zeros(1,N);
for n=-N1:1:N1;
if abs(n)<=N1/4;
y2(n+N1+1)= (1+cos(2*pi*abs(Ts*n)/Tw))/2;
else
y2(n+N1+1)=0;
end
end
n=-N1:1:N1;
plot(n,y2);
xlabel('n');
ylabel('w[n]');

%b 
y3=zeros(1,N);
for i=1:1:N;
y3(i)=y(i)*y2(i);
end
plot(n,y3)
xlabel('n');
ylabel('y[n]');

%c
A=fft(y3);
A=fftshift(A);
plot(n,abs(A));
xlabel('n');
ylabel('Magnitude of the DFT of y');
title('Magnitude Response of the DFT of y');
