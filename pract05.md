1) Clone el siguiente repositorio de 'github' y siga las instrucciones que se indican en el fichero 'README.md':
git@github.com:coromoto/PruebasUnitarias.git
2) En esta tarea escriba la respuesta a las siguientes preguntas:
   2.1.) ¿Cuál es el error en el código del método para calcular el máximo común divisor?

def gcd(u, v)
  u, v = u.abs, v.abs
  while v == 0
    u, v = v, u % v
  end
  u
end

puts gcd(6,3)

//devuelve 6 ( el primer valor)

//En la condicion de parada del while debe ser distinto de 0 y no igual a 0, sino devuelve siempre el primer valor.


def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end

puts gcd(6,3)

//De esta forma devuelve de forma correcta el mcd de 6 y 3 que es 3.

   2.2.) ¿Qué comandos del depurador utilizó para detectarlo? Describa la sesión de depuración.

gcd.rb:1:def gcd(u, v)
(rdb:1) b 4
Set breakpoint 1 at gcd.rb:4
(rdb:1) n
gcd.rb:9:puts gcd(6,3)
(rdb:1) n
6

//Se ha detectado el fallo del while porque al crear un breakpoint dentro del bucle y luego ejecutarlo nunca entra en el bucle y llega al breakpoint porque la condicion está mal, si creas el mismo breakpoint con la condicion del while arreglada si llega al breakpoint y te muestra que ha entrado.

gcd.rb:1:def gcd(u, v)
(rdb:1) b 4
Set breakpoint 1 at gcd.rb:4
(rdb:1) n
gcd.rb:9:puts gcd(6,3)
(rdb:1) n
Breakpoint 1, gcd at gcd.rb:4
gcd.rb:4:    u, v = v, u % v
(rdb:1) n
gcd.rb:6:  u
(rdb:1) n
3


// Los comandos utilizados son ruby -rdebug gcd.rb para iniciar el debugger, el b 4 para crear un breakpoint en la linea 4 dentro del bucle y n para ir a la siguiente linea.

   2.3.) Escriba la dirección 'HTTP' del repositorio que contiene el desarrollo de su práctica.

https://github.com/alu0100595727/prct05.git
