divisor_de = ->(x, y){y % x == 0}
divisor_de.(5, 35)
divisor_de.(4, 35)

curried_divisor_de = ->(x){->(y) {y % x == 0}}
puts curried_divisor_de.(4).(16)

curried_divisor_de = divisor_de.curry
puts curried_divisor_de.(4).(16)

eh_par = curried_divisor_de.(2)
puts eh_par.(5)
puts eh_par.(8)
