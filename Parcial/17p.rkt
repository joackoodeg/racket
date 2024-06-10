#lang racket

(define convdatos 
    (lambda (li)
        (map (lambda(item)
        
            (let ((type (first item))
                (data (second item)))
                
                (cond
                    [(equal? type "D") (map abs data)]
                    [(equal? type "T") (map (lambda (x) (abs (string->number x))) data)]
                    [(equal? type "B") (map (lambda (x) (if(equal? x "V") 1 0 )) data)]
                )
            )
        
        ) li)
    )
)

; Se elabora un map que recorre entre cada ITEM de la Lista
; luego con un let se denomina type al primero y data al segundo elemento
; con cond se puede verificar si es igual al tipo y con un map se hacen los cambios necesario


(convdatos '(
("D" (1 2 3 4 5))
("T" ("6" "7" "8"))
("B" ("V" "F"))
))