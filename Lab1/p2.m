% Ejemplo de script: Nombre archivo: rang_mag --- Determina el rango de un cuadrado magico
clear all;
r = zeros(1,32);
for n = 3:32
r(n) = rank(magic(n));
end
r
bar(r)
