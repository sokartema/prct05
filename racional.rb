require "./gcd.rb"


class Fraccion

attr_reader :n , :d

def initialize(n,d)

@n,@d = n, d

end

def to_s

"(#{@n}/#{@d})"
end

def suma(n, d)

puts "SUMA"

mcm= ((@d * d)/ gcd(@d , d))

n1 =(mcm / @d) * @n

n2 =(mcm / d) * n

n1 += n2

puts " #{n1} / #{mcm} "

mcd = gcd(n1, mcm)

n1 = n1/mcd

mcm = mcm/mcd

puts "Suma simplificada"

puts " #{n1} / #{mcm} "

end
def resta(n,d)

puts "RESTA"

mcm= ((@d * d)/ gcd(@d , d))

n1 =(mcm / @d) * @n

n2 =(mcm / d) * n

n1 -= n2

puts " #{n1} / #{mcm} "

mcd = gcd(n1, mcm)

n1 = n1/mcd

mcm = mcm/mcd

puts "Resta simplificada"

puts " #{n1} / #{mcm} "


end
def producto(n,d)

puts "PRODUCTO"

n1 = @n * n
n2 = @d * d

puts "#{n1} / #{n2}"

mcd = gcd(n1, n2)

n1 = n1/mcd

n2 = n2/mcd

puts "Producto simplificado"

puts " #{n1} / #{n2} "



end
def division(n,d)

puts "DIVISION"

n1 = @n * d
n2 = @d * n

puts "#{n1} / #{n2}"

mcd = gcd(n1, n2)

n1 = n1/mcd

n2 = n2/mcd

puts "Division simplificada"

puts " #{n1} / #{n2} "


end

end


