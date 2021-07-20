clc; clear;
%% a)
%Del conjunto de los números enteros positivos de 1 a 1000, se selecciona
%al azar un  número cualquiera. ¿Cuántos números serán divisibles entre 5?
disp('Solucion a): ');
%Sea A el conjunto de los numeros enteros positivos de 1 a 1000
%Sea a1 el conjunto de los números que terminan en 0
%Sea a2 el conjunto de los números que terminan en 5

%A=1:1:1000;
a1=5:10:1000;
a2=10:10:1000;

num_divis_por_5= length(a1)+length(a2); %por el principio de ADICIÓN
disp(num_divis_por_5);

%% b) 
%clc;clear;
% Un grupo de asistentes a un congreso de comunicaciones esta conformado
% por 30 individuos con pasaporte español, 20 con pasaporte inglés, 15 con
% pasaporte brasileño, 25 con pasaporte mexicano y 10 con pasaporte
% italiano. ¿De cuántas maneras se pueden seleccionar dos individuos de
% este grupo, con nacionalidad diferente?

disp('Solucion b): ');
%Tenemos varios casos:
%{español,ingles},{español,brasileño},{español,mexicano},{español,italiano}
%,{ingles,brasileño}, {ingles,mexicao},{ingles,italiano},
%{brasileño,mexicano},{brasileño,italiano} y {mexicano, italiano}
x={"espanol",30;"ingles",20;"brasileno",15;"mexicano",25;"italiano",10;};
for v=1:length(x)
    %disp(x{v,1});
    for z=1:x{v,2}
        s.(x{v,1})(z)=x{v,1}+"_"+int2str(z);
    end
end
esp=s.espanol;  
ing=s.ingles;
bra=s.brasileno;
mex=s.mexicano;
ita=s.italiano;

%A= [esp,ing,bra,mex,ita];

esp_ing=30*20;
esp_bra=30*15;
esp_mex=30*25;
esp_ita=30*10;
ing_bra=20*15;
ing_mex=20*25;
ing_ita=20*10;
bra_mex=15*25;
bra_ita=15*10;
mex_ita=25*10;

disp(esp_ing+esp_bra+esp_mex+esp_ita+ing_bra+ing_mex+ing_ita+bra_mex+bra_ita+mex_ita);
%% c)
%clc; clear;
disp('solucion del c): ')
%Suponga que se tienen 5 libros diferentes de preparación del exámen ComTIA A+, 6
%libros diferentes de ComTIA Network+ y 4 libros diferentes del exámen
%COmTIA Security+. Si se toman 2 libros en forma aleatoria, sin observar
%para que tipo de examen es , cúantas parejas diferentes podemos formar?

x={"A", 5; "Network", 6; "Security",4};
for v=1:3
   for z=1: x{v,2}
       s.(x{v,1})(z)=x{v,1}+"_"+int2str(z);
   end
end
librosA=s.A;
librosNetwork= s.Network;
librosSecurity= s.Security;

A= [librosA librosNetwork librosSecurity]; %<-- No se requiere este vector
% Si se seleccionan 2 al azar ¿Cuántas parejas diferentes podemos formar?

A_Network=5*6;
A_Security=5*4;
Network_Security=6*4;
disp(A_Network + A_Security + Network_Security);

%% d)
%clc; clear;
disp('solucion del d): ');
% Un comité de 3 personas ha de seleccionarse de una población de 30
% personas. El primer individuo seleccionado al azar será el Presidente del
% comité, el segundo selecionado al azar será el Secretario y el tercer
% seleccionado al azar será el Tesorero del comité. ¿De cuantas maneras se	
% puede obtener el comité?
x=strings(30,1);
for v=1:30
   x(v,1)="Persona_"+int2str(v);
end
%30*29*28
b1=30;
b2=29;
b3=28;
%Por el principio de la MULTIPLICACIÓN
total=b1*b2*b3;
disp(total);