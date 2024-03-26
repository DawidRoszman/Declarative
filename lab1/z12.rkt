#lang racket

(define (filter-accumulate combiner null-value term a next b pred) 
  (if (> a b)
      null-value
      (if (pred a)
          (combiner (term a)
                    (filter-accumulate combiner null-value term (next a) next b pred))
          (filter-accumulate combiner null-value term (next a) next b pred))))

(define (prime? n)
  (define (iter a)
    (cond ((> a (sqrt n)) #t)
          ((= (remainder n a) 0) #f)
          (else (iter (+ a 1)))))
  (iter 2))

(define (product-gcd n)
  (define (next a) (+ a 1))
  (define (term a) a)
  (define (combiner a b) (* a b))
  (define (pred a) (= (gcd a n) 1))
  (filter-accumulate combiner 1 term 1 next n pred)
  )

(define (sum-of-squares-prime a b)
  
  (define (next a) (+ a 1))
  (define (term a) (* a a))
  (define (combiner a b) (+ a b))
  (define (pred a) (prime? a))
  (filter-accumulate combiner 0 term a next b pred)
   )

  
(sum-of-squares-prime 1 3)
(product-gcd 6)
