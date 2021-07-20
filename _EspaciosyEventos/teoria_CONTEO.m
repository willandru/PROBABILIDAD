clear; clc;
%% PRINCIPIOS FUNDAMENTALES: Principio de Adición, Principio de Multiplicación
%% PRINCIPIO DE ADICION
%Sea A un conjunto y sen a1, a2,..., an subconjuntos de A: DISYUNTOS 2 a 2,
%tales que A=a1 U a2 U ... U an. Entonces, el número de elementos de A es
%  |A|= |a1|+|a2|+...+|an|
%La colección finita {a1, a2,...,an} se llama *PARTICION FINITA* de A
%PRINCIPIO DE ADICION: Si existen r1 objetos diferentes en el primer
%conjunto, r2 objetos diferentes en el segundo conjunto, ... y rn objetos
%diferentes en el n-ésimo conjunto, y si cada par de conjuntos es disyunto
%entonces, el número de maneras diferentes para seleccionar un objeto de
%uno de los n  conjuntos es: r1+r2+...+rn
%% PRINCIPIO DE LA MULTIPLICACION
%Sea A un conjunto. Si cada elemento de A puede ser construido de una y
%solamente de una forma, eligiendo de manera independiente n elementos de 
%los conjuntos b1,b2,..., bn respectivamente, entonces el número de
%elementos de A es |A|=|b1|*|b2|*...*|bn|
%PRINCIPIO DE LA MULTIPLICACIÓN: Sea un procedimiennto que se puede dividir
%en n etapas sucesivas (ordenadas) . Y consideremos los siguientes
%supuestos: I)Se dan r1 resultados en la primera etapa, r2 resultados en la
%segunda etapa,..., rn resultados en la n-ésima etapa. II)El número de
%resultados de cada etapa es independiente de las selecciones en las etapas
%previas. III)Los resultados compuestos para dar lugar al procedimiento son
%todos distintos entonces,
%el procedimiento total tiene r1*r2*...*rn resultados compuestos distintos 
