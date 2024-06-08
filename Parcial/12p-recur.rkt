#lang racket

(define subst 
    (lambda (remp orig li)
        (cond
            ((null? li) '())
            (
                (equal? orig (car li))
                (cons remp (subst remp orig (cdr li)))
            )
            (else 
                (cons (car li) (subst remp orig (cdr li)))
            )
        )
    )
)

(subst 'k 'c '( c o c o n u t))

