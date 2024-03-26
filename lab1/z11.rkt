#lang racket

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (sum a b)
  (define (term x) x)
  (define (next x) (+ x 1))
  (accumulate + 0 term a next b))
(define (product a  b)
  (define (term x) x)
  (define (next x) (+ x 1))
  (accumulate * 1 term a next b))

(sum 1 5)
(product 1 5)

