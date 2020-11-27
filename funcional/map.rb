(1..5).map(&eh_par)
# => [false, true, false, true, false]

[20, 4, 3, 2, 2, 9].map(&->(x){eh_par.(x) ? x**2 : x})
# =>[400, 16, 3, 4, 4, 9]
