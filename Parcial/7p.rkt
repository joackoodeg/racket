#lang racket
(define (mascorta l1 l2)
    (if (<= (length l1) (length l2))
        l1
        l2
    )
)

(mascorta '(a b) '(c d e))
(mascorta '(a b) '(c d))
(mascorta '(a b) '(c))