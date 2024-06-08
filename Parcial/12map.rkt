;(map (lambda (x) (+ x 2)) '(1 2 3))
#lang racket

(define subst 
    (lambda (reemp orig li)
        (map (lambda (x) 
                (if (eq? x orig); si x es igual orig
                reemp ; entonces devuelve reemp
                x ; si no devuelve x (sin cambios)
                )
            ) li)   
    )
)


(subst 'k 'c '( c o c o n u t))