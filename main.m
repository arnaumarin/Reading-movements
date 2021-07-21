fm = 512;
t=0:1/fm:1;

freq= 10;
signal = 1*sin(2*pi*freq.*t);
signal_w = 1*sin(2*pi*freq.*t)+10*rand(1,length(t));


subplot(2,2,1)
plot(signal);
subplot(2,2,2)
plot(signal_w)
subplot(2,2,3)
stem(8:2:30, calculo_espectro(signal, fm));
subplot(2,2,4)
stem(8:2:30, calculo_espectro(signal_w, fm));