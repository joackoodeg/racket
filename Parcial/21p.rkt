#lang racket

(define (fullreverse-list lst)
  ;; Función auxiliar que maneja el proceso de reversión
  (define (reverse-helper lst)
    (map (lambda (x)
           (if (list? x)
               (fullreverse-list x)
               x))
         (reverse lst)))
  ;; Llama a la función auxiliar para realizar el proceso
  (reverse-helper lst))

;; Ejemplo de uso
(fullreverse-list '(1 (2 3 4 (4 5) (3 (5 6)) 4)))
;; Output esperado: (4 ((6 5) 3) (5 4) 4 3 2)
