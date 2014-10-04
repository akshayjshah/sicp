#lang planet neil/sicp

(define (cbrt x) (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x))
     threshold))

(define threshold 0.001)

(define (improve guess x)
  (/ (+ (/ x (* guess guess))
        (* 2 guess))
     3))
