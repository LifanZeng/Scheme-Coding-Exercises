; CS152 Spring 2022
; Lifan Zeng
; 014172171
; Homework assignment 5
; Exercise 3
; 5/12/2022

; In this exercise you are expected to use higher-order functions and recursion. Implement a
; function named reverse, which given a list reverses the order of the elements in that list.
; Example of your code execution:
; (display (reverse '(1 2 3 4 5 6 7 8 9 10)))
; Expected output:
; (10 9 8 7 6 5 4 3 2 1)


(define reverse!
  (lambda (s)
    (let loop ((s s) (r '()))
      (if (null? s) r
      (let ((d (cdr s)))
            (set-cdr! s r)
        (loop d s))))))

(display (reverse '(1 2 3 4 5 6 7 8 9 10)))