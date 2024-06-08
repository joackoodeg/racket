#lang racket
(define a 10) ; Definimos el valor de 'a'
(define b 5)  ; Definimos el valor de 'b'
(define c 3)  ; Definimos el valor de 'c'

; Expresión 1: (+ (/ (* 7 a) b) (/ (* 3 a) b) (/ (* 7 a) b))
(let ((temp (/ (* 7 a) b))) ;Define a temp
  (+ temp (/ (* 3 a) b) temp)) ; Hace Temp + (otra cosa) + temp

; Expresión 2: (cons (car (list a b c)) (cdr (list a b c))))
(let ((lista (list a b c)))
  (cons (car lista) (cdr lista)))


