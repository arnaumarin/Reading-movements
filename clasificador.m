function clasificador(usuario,tarea1,tarea2,k)

total_registros=4;
% Bucle para cargar los 4 fichero y simultaneamente almacenar en un vector
% de estructuras unicamente las 2 tareas de analisis
for registro=1:total_registros
    %     fprintf('Cargando fichero %d\n',registro);
    % Carga de los datos procesados
    eval(sprintf('load(''user%sf%d'')',usuario,registro));
    
    % Guardar datos en vector de estrucutras
    % Seleccionar sólo las tareas indicadas
    % Seleccionar también aquí en su caso las características del electrodo seleccionado o todas las características
    datos(registro).datos=
    datos(registro).tareas=
end

% Validacion cruzada de 4 iteraciones

for i=1:total_registros % Se realizaran 4 iteraciones
    fprintf('Realizando iteración %d\n',i);
    train.datos=[];
    train.tareas=[];
    test.datos=[];
    test.tareas=[];
    % Separar en datos de entremiento y test
    
    % Obtener el vector de prediciones con el clasificador
    
    % Finalmente se compara la salida del clasificador con la real y se obtienen los resultados
    
end

% Mostrar los resultados obtenidos
