#lang racket

(define attach-at-end 
    (lambda (x li)
        (if (null? li) ;Si la lista esta vacia
            (list x) ;devuelve x
            (cons (car li) (attach-at-end x (cdr li))) ; de lo contrario: agrega el primero d la original
        )
    )
)

(attach-at-end 'prueba '(esto es una))