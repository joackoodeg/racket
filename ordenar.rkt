#lang racket

(define (insert elem sorted-list)
  (cond
    ((null? sorted-list) (cons elem '()))
    ((< elem (car sorted-list)) (cons elem sorted-list))
    (else (cons (car sorted-list) (insert elem (cdr sorted-list))))))

(define (insertion-sort lst)
  (if (null? lst)
      '()
      (insert (car lst) (insertion-sort (cdr lst)))))

; Ejemplo de uso
(define unsorted-list '(5 3 8 4 2 7 1 6))

(insertion-sort unsorted-list)
; Devuelve '(1 2 3 4 5 6 7 8)
