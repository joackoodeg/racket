#lang racket 
;# vector inmodificable y (vector'(123)) es modificable

(define cantidad
  (lambda (el ls)
    (cond
      ((null? ls) 0)
      ((equal? el (car ls))
       (+ 1 (cantidad el (cdr ls))))
      (else (cantidad el (cdr ls))))))

(cantidad 3 '(1 2 3 4 5 4 3 2 1 ))

;profe:

(define contar
  (lambda (e l)
    (if (null? l)
      0
      (if(eq? (car l) e)
      (+ (contar e (cdr l)) 1 )
      (contar e (cdr l))
      )
    )
  )
)

(define eliminar
  (lambda (x ls)
    (if(null? ls)
       ls
    (if (eq? x (car ls))
        (eliminar x (cdr ls))
        (cons (car ls)(eliminar x (cdr ls)))
   )    
  )
 )
)