function output=procesado(sesion)

electrodos=[8 32 23 9 22 12 13 19]; % C3, Cz, C4, CP1, CP2, P3, Pz, and P4
fm=sesion.conf.fm;
window= 512; %1 sec = 512 samples
step= 128; %128 sample
output.data=[];
output.task=[];
win_init = 1;
win_end= 1;
n=1;
fm = 512; 
spectrum = zeros(1, length(sesion.data())/fm); %zeros(1,239) 1 spect/sec
%troceado y extracción de caracteristicas
for i=1:length(sesion.data(:))/length(sesion.data) %i=1:32
    fprintf("1\n");
    for j=1:length(sesion.data) %j=1:122368
        for w = 1:step
             %fprintf("3\n");
            tasks = sesion.task(n*w);
            if all(tasks(:) ~= tasks(1)) %check if all tasks are same
                fprintf("There is different tasks in one window.");
                break
            end
            spectrum(1,w)=calculo_espectro(sesion.data(i:j), fm);
            output.data(i,:)= %vector caracteristicas
            output.task(j) = tasks(1);
            n=n+1;
        end
    end
end

    
