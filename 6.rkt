#lang racket
(let ((x 9))
(* x
(let ((x (/ x 3)))
(+ x x))))

#|
x=9
(x *( {x=x/3} => (3+3))
9*6 = 54
|#