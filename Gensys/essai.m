A = [ 0. 1. 0. 0.33 -1. -0.33 -1. ; 0. 1.5 0. -0.06 0.5 0.06 -0.08 ; 1. 0. 0. -0.67 0. -0.33 -1. ; 1. -0.77 -0.23 0. 0. 0. 0. ; 0. 0. 0. 0. 0. 1. 0. ; 0. 0. 0. -0.47 -0.53 0. 0. ; 0. 0. 0. 0. 0. 0. 1.]
B = zeros(7,7)
B(1,6) = 0.33
B(2,2) = 1.5
B(2,5) = 0.5
B(5,3) = 0.06
B(5,6) = 0.94
B(7,7) = 0.9

E = zeros(7)

C = zeros(7,1)
C(7,1) = 1.

D = zeros(7,1)
D(2,1) = 1.

[G1,C,impact,fmat,fwt,ywt,gev,eu] = gensys(A,B,E,C,D)