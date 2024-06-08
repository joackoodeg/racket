#lang racket

(define distance
    (lambda (p1 p2)
        (let* 
            (
            (x1 (car p1))
            (y1 (cdr p1))
            (x2 (car p2))
            (y2 (cdr p2))
            (dx (- x2 x1))
            (dy (- y2 y1))
            )
            (
                sqrt (+ (* dx dx) (* dy dy))
            )
        )
    )
)

(distance '(2 . 2) '(4 . 4))

;Esta es la última expresión en el let*, y por lo tanto, 
;su valor es el que se devuelve como resultado de la función.