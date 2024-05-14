#lang racket 
;# vector inmodificable y (vector'(123)) es modificable

(define cantidad
  (lambda (el ls)
    (cond
      ((null? ls) 0)
      ((equal? el (car ls))
       (+ 1 (cantidad el (cdr ls))))
      (else (cantidad el (cdr ls))))))

(cantidad 3 '(1 2 3 4 5 4 3 2 1 ))

