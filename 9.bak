#lang racket
(define (distance2d p1 p2)
  (let* ((x1 (car p1))
         (y1 (cdr p1))
         (x2 (car p2))
         (y2 (cdr p2))
         (dx (- x2 x1))
         (dy (- y2 y1)))
    (sqrt (+ (* dx dx) (* dy dy)))))

(distance2d '(1 . 1) '(2 . 2))