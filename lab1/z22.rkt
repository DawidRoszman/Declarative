#lang racket

(define (fold f e)
  (lambda (lst)
    (if (null? lst)
      e
    (f (car lst) ((fold f e) (cdr lst))))))

((fold + 0) '(1 2 3 4))

(define (prod l)
  ((fold * 1) l))

(prod '(1 2 3 4))

#| (define (length l) |#
#|   ((fold (lambda (x y) (+ 1 y)) 0) l)) |#
#||#
#| (length '(1 2 3 4)) |#
#||#
#| (define (delete x l) |#
#|   ((fold (lambda (y z) (if (eq? x y) z (cons y z))) '()) l)) |#
#||#
#| (delete 2 '(1 2 3 4)) |#
#||#
#| (define (reverse l) |#
#|   ((fold (lambda (x y) (append y (list x))) '()) l)) |#
#||#
#| (reverse '(1 2 3 4)) |#
#||#
#| (define (map f l) |#
#|   ((fold (lambda (x y) (cons (f x) y)) '()) l)) |#
#||#
#| (map (lambda (x) (* x x)) '(1 2 3 4)) |#
#||#
#| (define (filter pred l) |#
#|   ((fold (lambda (x y) (if (pred x) (cons x y) y)) '()) l)) |#
#||#
#| (filter even? '(1 2 3 4)) |#
#||#
#| (define (forall pred l) |#
#|   ((fold (lambda (x y) (and (pred x) y)) #t) l)) |#
#||#
#| (forall even? '(1 2 3 4)) |#
#||#
#||#
