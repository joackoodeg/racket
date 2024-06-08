#lang racket

(define attach-at-end 
    (lambda (li str)
        (if (null? li) ; Si la lista está vacía...
            (list str) ; ...crea una lista con el nuevo elemento
            (cons (first li) (attach-at-end (rest li) str)) ; De lo contrario, toma el primer elemento 
                                                            ; de la lista original...
        )
    )
)

(define mi-lista '(esto es una))
(define nueva-lista (attach-at-end mi-lista 'prueba))
nueva-lista 