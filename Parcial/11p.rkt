#lang racket

(define count-elem 
    (lambda (e li)
        (cond
            ((null? li) 0)
            ((equal? e (car li))
            (+ 1 (count-elem e (cdr li)))
            )
            (else (count-elem e (cdr li)))
        ) 
    )
)

;El ELSE es como un DEFAULT de un switch

(count-elem 3 '(1 2 3 4 5 4 3 2 1 ))