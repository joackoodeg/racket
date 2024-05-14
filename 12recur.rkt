#lang racket

(define (subst reemplazar original lista)
  (cond ((null? lista) '())   ; Caso base: si la lista está vacía, devuelve una lista vacía
        ((eq? (car lista) original)   ; Si el primer elemento es igual al original
         (cons reemplazar           ; Agrega el valor de reemplazo a la lista resultante
               (subst reemplazar original (cdr lista))))   ; Llama recursivamente a subst con el resto de la lista
        (else   ; Si el primer elemento no es igual al original
         (cons (car lista)           ; Agrega el primer elemento a la lista resultante
               (subst reemplazar original (cdr lista))))))   ; Llama recursivamente a subst con el resto de la lista

(subst 'k 'c '( c o c o n u t))
