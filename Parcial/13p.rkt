#lang racket

(define contar 
    (lambda (elem li)
        (if (null? li)
            0
            (if (equal? (car li) elem)
                (+ 1 (contar elem (cdr li)))
                (contar elem (cdr li))
            )
        )
    )
)

(define eliminar 
    (lambda (elem li)
        (if (null? li)
            li
            (if (equal? elem (car li))
                (eliminar elem (cdr li))
                (cons (car li) (eliminar elem (cdr li)))
            )
        )
    )
)

(define (agrupar li)
    (if (null? li)
        '()
        (let ((current (car li)))
            (cons (make-list (contar current li) current)
                (agrupar (eliminar current li))
            )
        )
    )
)


(agrupar '(A A B C A B A D C))