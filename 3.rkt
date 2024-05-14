#lang racket
(car (cdr (cdr (list + - * /))) 5 5)

#|
    Crear la lista de funciones: (+ - * /)
    Obtener la lista sin el primer elemento: (- * /)
    Obtener la lista sin los dos primeros elementos: (* /)
    Obtener el primer elemento de la lista: *
    Aplicar la función obtenida a los argumentos 5 y 5: (* 5 5)
|#