#lang racket

;; Definir la estructura punto con transparencia
(struct punto (x y) #:transparent)

;; Crear dos puntos
(define punto1 (punto 3 4))
(define punto2 (punto 3 4))
(define punto3 (punto 5 6))

;; Imprimir los puntos
(displayln punto1) ; imprime (punto 3 4)
(displayln punto2) ; imprime (punto 3 4)
(displayln punto3) ; imprime (punto 5 6)

;; Comparar puntos
(equal? punto1 punto2) ; devuelve #t
(equal? punto1 punto3) ; devuelve #f
