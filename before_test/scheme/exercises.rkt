#lang racket
; Z2
(define (new.< x y)
  (< x y))

(define (new.> x y)
  (< y x))

(define (new.= x y)
  (and (not (< x y)) (not (< y x))))

(define (new.<= x y)
  (or (< x y) (and (not (< x y)) (not (< y x)))))
(define (new.>= x y)
  (or (< y x) (and (not (< x y)) (not (< y x)))))

(define (new.<> x y)
  (or (< x y) (< y x)))

; Z3
(define (nwd a b) 
  (if (= a b)
    b
    (if (> a b)
      (nwd (- a b) b)
      (nwd a (- b a)))))
    

(nwd 12 18)

(define (nww a b)
  (if (= b 0)
  a
  (nww b (modulo a b))))

(nww 24 36)

; Z4
(define (same-values? p1 p2 x y)
  (if (or (and (p1 x y) (p2 x y)) (and (not (p1 x y)) (not (p2 x y))))
           #t
           #f))
(same-values? = new.= 3 1)
(same-values? < > 2 3)
(same-values? + * 2 2)

;Z5
(define (m1 n)
  (if (zero? n)
    0
    (- n 1)))
(define (odd? n)
  (if (zero? n)
    #f
    (even? (m1 n))))

(define (even? n)
  (if (zero? n)
    #t
    (odd? (m1 n))))

(odd? 1)
(odd? 11)
(odd? 12)
(even? 12)

;Z6
(define (factorial n)
  (if (= n 1)
    1
    (* n (factorial (- n 1)))))
(factorial 5)

;Z7
(define (fibonacci n)
  (if (or (= n 1) (= n 2))
    1
    (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
    ))
(fibonacci 6)

(define (fib_help n i prev acc)
  (if (< n i)
    acc
    (fib_help n (+ 1 i) acc (+ prev acc))))
(define (fib_acc n)
  (fib_help n 1 1 0)
  )
(fib_acc 6)

;Z8
(define (power b e) 
   (if (= e 0) 
     1 
     (* b (power b (- e 1))) 
     )) 
; (define (exp b e) |#
;   (power (power b (/ e 2)) 2)) |#
    
(define (exp b e)
  (cond [(zero? e) 1]
    [(even? e) (power (exp b (/ e 2)) 2)]
    [else (* b (power (exp b (/ (- e 1) 2)) 2))]))
(exp 2 5)

;Z9
(define (product term next a b)
  (if (zero? b)
    1
    (product term (* a a) a (- b 1))))

(product 2 0 2 5)

; Z10







