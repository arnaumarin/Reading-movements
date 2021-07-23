
clear all;
name= 'user';
num='0093';
num2='20040101';
test = '04';
reg='reg001.mat';
user = strcat(name,'#',num,'#',num2,'#',test,'#',reg);
load(user)
file = 'f1';

sesion= session;

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
    end
    output.task(j) = tasks(1);   
end



save str(name,num,file) output;

