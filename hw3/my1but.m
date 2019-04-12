%Q1
%first butfilter
L=3;
fc=0.1;
fs=10;
Ts=1/fs;
[b,a]=butter(L,fc);
%2
K=100;
[H,w]=freqz(b,a,K);
dB=mag2db(abs(H));
plot(w/pi,dB);
xlabel('\omega/ \pi');
ylabel('Magnitude (dB)');
title('Magnitude Response');
plot(w/pi, phase(H)*180/pi);
xlabel('\omega/ \pi');
ylabel('Phase(degrees)');
title('Phase Response');
%c
n=1:1:100;
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel(y);
title('Filtered signal of x[n]');
ylabel('y');

%second butfilter
L=7;
fc=0.1;
fs=10;
Ts=1/fs;
[b,a]=butter(L,fc);
%2
K=100;
[H,w]=freqz(b,a,K);
dB=mag2db(abs(H));
plot(w/pi,dB);
xlabel('\omega/ \pi');
ylabel('Magnitude (dB)');
title('Magnitude Response');
plot(w/pi, phase(H)*180/pi);
xlabel('\omega/ \pi');
ylabel('Phase(degrees)');
title('Phase Response');
%c
n=1:1:100;
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel(y);
title('Filtered signal of x[n]');
ylabel('y');

%third filter
L=3;
fc=0.5;
fs=10;
Ts=1/fs;
[b,a]=butter(L,fc);
%2
K=100;
[H,w]=freqz(b,a,K);
dB=mag2db(abs(H));
plot(w/pi,dB);
xlabel('\omega/ \pi');
ylabel('Magnitude (dB)');
title('Magnitude Response');
plot(w/pi, phase(H)*180/pi);
xlabel('\omega/ \pi');
ylabel('Phase(degrees)');
title('Phase Response');
%c
n=1:1:100;
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
stem(n,y);
xlabel('n');
ylabel(y);
title('Filtered signal of x[n]');
ylabel('y');


