#lang racket
#|
Obtenga el elemento x de las siguientes listas:
|#

(cdr(cdr(cdr '(a b c . x))))

(car(cdr(cdr(cdr '(a b c x)))))

(cdr(car'((a . x) b)))

(car'(x . a))

(cdr'(a . x))