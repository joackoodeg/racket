#lang racket

(define (app2list elem1 elem2)
  (cond
    [(and (list? elem1) (list? elem2)) (append elem1 elem2)]
    [(list? elem1) (cons elem2 elem1)]
    [(list? elem2) (cons elem1 elem2)]
    [else (list elem1 elem2)]))
                    
(app2list '(1 2 3) '(4 5 6)) ; Output: (1 2 3 4 5 6)
(app2list '(1 2 3) 4) ; Output: (1 2 3 4)
(app2list 1 '(2 3 4)) ; Output: (1 2 3 4)
(app2list 1 2) ; Output: (1 2)