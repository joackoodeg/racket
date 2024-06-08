#lang racket

(define primer-num 
    (lambda (li)
        (if (null? li) 
            null
            (if (number? (car li))
                (car li)
                (primer-num(cdr li))
            )
        )
    )
)

(primer-num '((1 . 2) 'a (b) (5) 6 8 'a 9))