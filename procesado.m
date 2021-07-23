function output=procesado(sesion)
<<<<<<< HEAD

%name= 'user';
%num='0093';
%num2='20040101';
%test = '04';
%reg='reg001.mat';
%user = strcat(name,'#',num,'#',num2,'#',test,'#',reg);
%load(user)
%file = 'f1';

%sesion= session;
=======
>>>>>>> 3f2ffc01c1e8c70fcf3a4ca7d09f06323c66517a

electrodos=[8 32 23 9 22 12 13 19]; % C3, Cz, C4, CP1, CP2, P3, Pz, and P4
fm=sesion.conf.fm;
window= 512; %1 sec = 512 samples
step= 128; %128 sample
output.data=[];
output.task=zeros(1,length(sesion.data));
win_init = 1;
win_end= 1;
n=1;
spectrum = zeros(1, length(sesion.data())/fm); %zeros(1,239) 1 spect/sec
<<<<<<< HEAD
%charact extraction
for j=1:length(sesion.data) %j=1:122368
    tasks = sesion.task(j*step);
    if all(tasks(:) ~= tasks(1)) %check if not all tasks are same
        fprintf("There is different tasks in one window. We out.");
        break
    end
    for elec = electrodos
        %calculate spectrum for each taken into acc electrode
        output.data(n,:)= calculo_espectro(sesion.data(elec,(1:j*step)), fm);
        plot(output.data(n,:));
        n=n+1;
=======
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
>>>>>>> 3f2ffc01c1e8c70fcf3a4ca7d09f06323c66517a
    end
    output.task(j) = tasks(1);   
end

<<<<<<< HEAD


save str(name,num,file) output;
=======
    
>>>>>>> 3f2ffc01c1e8c70fcf3a4ca7d09f06323c66517a
