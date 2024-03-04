#lang racket
;; b^e = (b^(e/2))^2
(define (square x) (* x x))
(define (exp b e)
  (if (= e 0)
      1
      (if (even? e)
          (exp (square b) (/ e 2))
          (* b (exp b (- e 1))))))
(define (acc_help b e acc)
  (if (= e 0)
      acc
      (if (even? e)
          (acc_help (square b) (/ e 2) acc)
          (acc_help b (- e 1) (* b acc)))))
(define (exp_acc b e)
  (acc_help b e 1))


(exp 2 6)
(exp_acc 2 6)

