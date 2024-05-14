#lang racket
;cons toma dos argumentos y crea un par (o una lista de dos elementos).
;car: Retornar el primer elemento de una lista.
(cons 'car '+)

; Esta es una lista con una sublista
(list 'esto '(es muy fácil))

; Usando quote para evitar la evaluación
(cons 'pero '(se está complicando...)) (cons '(y ahora no se que ) 'hizo) (quote (+ 7
2))

; cdr: Retornar la lista de elementos excluyendo el primer elemento.
(cons '+ '(10 3))
(car '(+ 10 3))
(cdr '(+ 10 3))
cons

(quote (cons (car (cdr (7 4)))) ) (quote cons)
(car (quote (quote cons))) (+ 2 3)
(+ '2 '3)
(+ (car '(2 3)) (car (cdr '(2 3)))); Resultado: 5
((car (list + - * /)) 2 3) ; Resultado: 5