#lang racket

(define attach-at-end 
    (lambda (el li)
        (if (null? li)
            (list el)
            (cons (car li) (attach-at-end el (cdr li)))
        )
    )
)

(attach-at-end 'prueba '(esto es una))