#lang racket

(define (convert-to-decimal-positive elem)
  (cond
    [(string? elem) (abs (string->number elem))]
    [(number? elem) (abs elem)]
    [(boolean? elem) (if elem 1.0 0.0)]
    [else (error "Formato de dato no soportado")]))