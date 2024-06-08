#lang racket

; Definición de la estructura punto
(struct punto (x y))

; Función para calcular la distancia entre dos puntos
(define (distancia-entre-puntos p1 p2)
  (let ([x1 (punto-x p1)]
        [y1 (punto-y p1)]
        [x2 (punto-x p2)]
        [y2 (punto-y p2)])
    (sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1))))))

; Ejemplo de uso
(define p1 (punto 3 4))
(define p2 (punto 7 1))

(distancia-entre-puntos p1 p2) ; => 5.0
