#lang racket

;; Función para calcular el peso ASCII de una palabra
(define (sumar-ascii lista)
    (if (empty? lista)
        0
        (+ (char->integer (first lista)) (sumar-ascii (rest lista))) 
        ;Convierte al char en un integer (el primero) y lo suma con el resto
    )
)

(define (pesopalabra palabra)
  (sumar-ascii (string->list palabra)) ;Convierte un string en una lista
)

;; Función para ordenar una lista de strings por peso ASCII
(define (ordenar lista)
    (sort lista
        (lambda (a b) (< (pesopalabra a) (pesopalabra b)))
    )
)

;; Ejemplo de uso:
(ordenar '("moto" "auto" "casa" "juego" "aire")) ; devuelve '("casa" "aire" "auto" "moto" "juego")
