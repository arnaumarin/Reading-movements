
n=1;
for i=1:length(sesion.data(:))/length(sesion.data)
    for data=1:length(sesion.data)
        for w = 1:step
            tasks = sesion.task(w);
            if all(tasks(:) ~= tasks(1)) %check if all tasks are same
                fprintf("There is different tasks in one window.");
                break
            end
            %fprintf('%d\n',i);
            %spectrum(1,w)=calculo_espectro(sesion.data(n:n+w), fm);
            %output.data(i,w)= 
            n=n+1
        end
    end
end

    