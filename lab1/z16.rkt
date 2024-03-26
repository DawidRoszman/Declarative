#lang racket
(define (iter f n) 
  (if (= n 0)
    1
    (* n (iter f (- n 1)))))

(iter 2 3)




