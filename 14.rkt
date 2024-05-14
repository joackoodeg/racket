#lang racket

(define concatenar
    (lambda (l1 l2)
        (if (null? l1)
            l2
            (cons (car l1) (concatenar (cdr l1) l2))
        )
    )
)

(concatenar '(1 2 3) '(4 5 6))