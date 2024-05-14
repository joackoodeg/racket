#lang racket

(define subst
  (lambda (reemplazar original lista)
    (map (lambda (x) (if (eq? x original) reemplazar x)) lista)))


(subst 'k 'c '( c o c o n u t))
