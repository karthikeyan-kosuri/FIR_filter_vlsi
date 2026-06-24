% 8-Tap Low Pass FIR Filter

N = 7;          % Filter Order
Fc = 0.4;       % Normalized Cutoff Frequency

b = fir1(N,Fc);

disp('FIR Coefficients:')
disp(b)