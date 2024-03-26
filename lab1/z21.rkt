#lang racket

(define values '((x . #f) (y . #t) (z . #f)))
#| Examples: > (define values '((x . #f) (y . #t) (z . #f))) |#
#|           values |#
#|           > (eval '(and y (not x)) values) |#
#|           #t |#
#|           > (eval '(and y (and (not x) z))) values) |#
#|           #f |#
#|           > (eval '(and y #t) values) |#
#|           #t |#
(define (eval expression values)
  ()
  )
