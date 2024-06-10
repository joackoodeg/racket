#lang racket

(define (convdatos lst)
  (map 
    (lambda (sublst)
      (let ((type (car sublst))
            (data (cadr sublst)))
        (cond
          [(string=? type "D") data]
          [(string=? type "T") (map string->number data)]
          [(string=? type "B") (map (lambda (x) (if (string=? x "V") 1 0)) data)]
          [else '()])))
    lst))

(display (convdatos '(("D" (1 2 3 4 5)) ("T" ("6" "7" "8")) ("B" ("V" "F")))))
