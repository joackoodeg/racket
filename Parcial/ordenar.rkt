#lang racket

;; Función auxiliar para insertar un elemento en su posición correcta en una lista ordenada
(define (insert x sorted-list)
  (cond
    [(empty? sorted-list) (list x)]
    [(< x (first sorted-list)) (cons x sorted-list)]
    [else (cons (first sorted-list) (insert x (rest sorted-list)))]))

;; Función principal para ordenar la lista usando insertion sort
(define (ordenar-lista lst)
  (define (insertion-sort lst sorted-list)
    (if (empty? lst)
        sorted-list
        (insertion-sort (rest lst) (insert (first lst) sorted-list))))
  (insertion-sort lst '()))

;; Ejemplo de uso
(ordenar-lista '(3 1 4 1 5 9 2 6 5))
;; Output esperado: '(1 1 2 3 4 5 5 6 9)
