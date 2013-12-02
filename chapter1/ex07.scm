;; For very small numbers (e.g., 1e-20), our hard-coded margin of error
;; exceeds the actual square root by several orders of magnitude - so
;; obviously, our answer will be wildly inaccurate.
;;
;; For very large numbers, our hard-coded margin of error is less than
;; the available precision, so our procedure will not terminate.

(define (sqrt x) (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define threshold 0.001)

(define (improve guess x)
  (/ (+ (/ x guess) guess)
     2))

;; New good-enough function
(define (good-enough? guess x)
  (define next (improve guess x))
  (< (abs (/ (- guess next) next))
     threshold))

