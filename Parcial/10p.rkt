#lang racket

(define largo 
    (lambda (li)
        (
            if (null? li)
            0
            (+ 1 (largo (cdr li)))
        )
    )
)


(largo '(1 4 8))