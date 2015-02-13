#lang planet neil/sicp

;; A recursive process.
(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

;; An iterative process.
(define (f-helper a b c acc count max)
  (define (summate a b c) ((+ a (* 2 b) (* 3 c))))
  (cond ((= count max) acc)
        ((= count 1) (f-helper 1 0 0 (+ acc 1) (+ count 1) max))
        ((= count 2) (f-helper 2 2 0 (+ acc 1) (+ count 1) max))    
        (else (f-helper (summate a b c) a b (+ acc (summate a b c)) (+ count 1) max))))