%(a)
T=100;
N=1001;
N1=500;
Ts=T/N1;
y=zeros(1,N);
for n=-N1:1:N1;
y(n+N1+1)= sinc(n*Ts);
end
xlabel('n');
ylabel('x[n]');
n=-N1:1:N1;
plot(n,y);
xlabel('n');
ylabel('x[n]');

%(b)
Y=fft(y);
Y=fftshift(Y);
plot(n,abs(Y))
xlabel('n');
ylabel('Magnitude of DFT of x');
title('Magnitude Response of the DFT of x during [-N1,N1]');
