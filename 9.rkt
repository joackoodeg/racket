#lang racket
(define (distance2d p1 p2)
  (let* ((x1 (car p1))
         (y1 (cdr p1))
         (x2 (car p2))
         (y2 (cdr p2))
         (dx (- x2 x1))
         (dy (- y2 y1)))
    (sqrt (+ (* dx dx) (* dy dy)))))

<<<<<<< HEAD
(distance2d '(1 . 1) '(2 . 2))
=======
(distance2d '(1 . 1) '(2 . 2))

;Con lambda:
(define distance2dL
  (lambda (p1 p2)
    (let* ((x1 (car p1))
           (y1 (cdr p1))
           (x2 (car p2))
           (y2 (cdr p2))
           (dx (- x2 x1))
           (dy (- y2 y1)))
      (sqrt (+ (* dx dx) (* dy dy))))))

(distance2dL '(2 . 2) '(4 . 4))

#|
LO QUE ESTA ADENTRO DEL LET SOLO ES PARTE DEL SCOPE DEL LET
NO USAR LET EN TODOS LOS CASOS: Tiene que ser una definicion de variables dentro de la cabecera
|#
>>>>>>> 50d0873de0b753d6b8dd2fd4cd6c78921411d706
