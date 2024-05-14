#lang racket

(define (contar e l)
    (if (null? l)
        0
        (if (eq? (car l) e)
            (+ 1 (contar e (cdr l)))
            (contar e (cdr l))
            )
    )
)

(define (eliminar x ls)
    (if (null? ls)
        ls
        (if (eq? x (car ls))
            (eliminar x (cdr ls))
            (cons (car ls) (eliminar x (cdr ls)))
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