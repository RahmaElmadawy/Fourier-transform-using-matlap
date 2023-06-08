clc
clear

FreqSample = 1000;
Time = 0:1 / FreqSample:0.5 ;
Signal = sin(220 * Time) + cos(440 * Time);

%Fourir transform
Length = length(Signal); 
Fourier_X = fft(Signal);
Magnitude = abs(Fourier_X);
Magnitude = Magnitude(1:Length / 2);
Frequency = (0:Length/2 - 1) * FreqSample / Length;
plot(Frequency , Magnitude)
xlim([0 100])

%Inverse fourior transform
Inverse = ifft(Fourier_X);
plot(Inverse)

%Power of signal
Power = (Magnitude).^2;
plot(Power)



