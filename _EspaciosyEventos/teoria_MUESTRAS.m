%% MUESTRA:Subconjunto de la poblacion cuyos elementos deseamos contar
%MODELO DE URNA: Una "caja cerrada que no permite ver a su interior" tiene
%en la parte superior la manera de sacar n elementos.
%% MUESTREO CON REMPLAZO Y CON ORDEN
%Un total de m pelotas es scada de la urna, una por una, anotando su número
%y devolviendola a la caja. La secuencia (1,4,3)es diferente de (4,1,3)
%¿Cuántas muestras ordenadas de tamaño m, con remplazo, se tienen?
% n^m
%n=tamañodelamuesta
%m=intentos
n=[0 1 2];
m=2;
muestras1=length(n)^m;
m=5;
muestras2=length(n)^m;

%Ejemplo1: Un Quiz tiene 5 preguntas de verdadero y falso, ¿Cuántos
%posibles examenes resueltos hay?
r=['Verdadero' 'Falso'];
intentos=5;
resultados= 2^5;
%Ejemplo2: Un jugador de baloncesto practica su tiro libre. Cada
%lanzamiento da lugar a 2 resultados. Si el jugador hace 10 lanzamientos.
%¿De cuántas maneras puede darse el total de resultados?
posibilidades=['encesta' 'falla'];
tiros=10;
formas= 2^10;

%% MUESTREO SIN REMPLAZO Y CON ORDEN
%Un total de m pelotas es sacada de la urna (m<=n), despues de que una
%pelota es sacada no se devuelve, la segunda pelota es seleccionada de las
% n-1 restantes, 
%El número total de muestras posibles con orden y sin remplazo es:
% n*(n-1)*(n-2)*...*(n-m-1)= n!/(n-m)!==nPm
%n=tamaño de la muestra
%m= intentos

%Ejemplo1 Un profesor tiene 10 proyectos diferentes para asignar a 6
%grupos.cada grupo deberá desarrollar un problema diferente. ¿De cuántas
%maneras posibles se pueden asignar los proyectos a los grupos?
%(10*9*8*7*6*5)
n_proyectos=10;
m_grupos=6;
y= factorial(n_proyectos)/factorial(n_proyectos-m_grupos); %= 10!/4!

%Un arreglo de objetos, o una sucesion ordenada de objetos, se llama una
%PERMUTACION de objetos

%Ejemplo2: La pieza básica de los acidos nuecleicos son los
%nucleotidos(A,T,G,C)
%a) El número de cadenas de ADN de longitud 4 es?
posbilidades=['A' 'B' 'C' 'D'];
tamano=4;
total=length(posbilidades)^tamano;
%b) El número de cadenas de ADN de longitud 4, sin repeticion de nucleoidos
%es:
tamano=4;
posibi=4;
res=factorial(4)/factorial(4-4) ;
%% MUESTREO SIN REMPLAZO Y SIN ORDEN
%De un total de n pelotas, se extraen m pelotas. No se devuelven a la urna
%y no importa el orden en que se sacaron.Las m pelotas se sacan
%simultaneamente
%El numero total de muestras no ordenadas y sin repeticion: n!/(m!(n-m)!)

%Ejemplo1: Consideremos el conjunto A={a,e,i,o,u}.¿Cuántos subconjuntos de
%A, con 2 elementos se pueden formar? (Observe que no importa el orden de
%los elementos)
n=5;
m=2;
rta= factorial(n)/(factorial(m)*factorial(n-m));

%Ejemplo2: Si una pizzeria ofrece su producto con 10 opciones, cada una de
%las cuales trae 2,3 o 4 ingredientes, y los tamaños que manejan son
%extragrande, grande, mediano y pequeño.
%a) El número total de opciones con tres ingredientes sin tener en cuenta
%el tamaño es
n=10;
m=3;
pp=factorial(10)/(factorial(3)*factorial(7));
%b) El número total de opciones con cualuiera de los ingredientes y
%cualquier tamaño es
sabor2=factorial(10)/(factorial(2)*factorial(8));
sabor3=factorial(10)/(factorial(3)*factorial(7));
sabor4=factorial(10)/(factorial(4)*factorial(6));
tot=4*(sabor2+sabor3+sabor4);

% 4C1 * [10C2 + 10C3 + 10C4]

%% MUESTRAS CON REMPLAZO Y SIN ORDEN
% De una urna con n pelotas, se extraen m pelotas. Una a una y luego se
% retorna a la urna. Se ignora el orden
%El número total de pelotas que pueden ser extraidas, sin orden y con
%devolucion, es: (n+m-1)C(m)