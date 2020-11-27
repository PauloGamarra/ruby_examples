#(1..).select(&->(x){eh_par.(x)}).first(5)
# LOOP INFINITO

(1..).lazy.select(&->(x){eh_par.call(x)}).first(5)
# => [2, 4, 6, 8, 10]
