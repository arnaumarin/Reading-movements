function [output] = calculo_espectro(input,fm)

temp.data = [];
temp.F = [];

L=size(input,2);
NFFT=fm; % resolución de fft, nº muestras que sacan si lo
%igualas a la frecuencia de muestreo te aseguras que en cada hercio
%tenga un valor
temp.F= fm/2*linspace(0,1,NFFT/2+1);%relaciona el numero de muestra con la frecuencia que tiene
aux=fft(input,NFFT,2)/L;%dividida por L para normalizar.Se hace la fft

for i = 1:size(input,1)
    temp.data(i,:) = abs(aux(i,1:(size(aux,2)/2+1))).^2;
end
output_temp = temp.data(:,find(temp.F==8):1:find(temp.F==31));%9-28
output=[];
for i=1:2:24
    output=[output output_temp(:,i)+output_temp(:,i+1)];
end
output=output';
output=output(:)';
return
