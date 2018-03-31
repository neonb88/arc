;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Computers are obedient 'to a T'
;    it'll print this many many times blindly and slave-ish-ly
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def pr_many (n)
 (repeat n (prn "hi class")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Hello world! in Arc Lisp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def hi () (prn "hi"))

(def hi2 ()
 (do (hi)
     (hi)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  This code doesn't work; that's why it's commented out.
;    It's simply meant to explain what an algorithm does and show how powerful computers are
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(def self_drive ()
; (do (get_loc)
;     (plan_route)
;     (while (no arrived)
;            (drive))
;     (stop)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Factorial is a good use of recursion!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def factorial (n)
 (if (is n 1)
     1
     (* n (factorial (- n 1)))))

(def fact (n)
 (if (is n 1)
     1
     (* n (fact (- n 1)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  Fibonacci is a BAD use of recursion
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(def fibonacci (n)
 (if (is n 0)
     1
     (is n 1)
            1
            (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  How to use macros  
;    (macros are not in other programming languages!
;     This makes Lisp powerful)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(mac foo ()
 (list '+ 1 2))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  This is meant simply to explain how to use a macro to generalize a function.
;    To reemphasize, Fibonacci should not be implemented recursively
;    (fib 50) will take a long time and 
;    (fib 100) will take much longer
;      (exponential in Big-O)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  If you're interested in different mathematical generalizations of the Fibonacci numbers, see: https://en.wikipedia.org/wiki/Lucas_number
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(mac fib_f_s (f s)
 (def fib (n)
  (if (is n 0)
      f
      (is n 1)
      s
      (+ (fib (- n 1))
         (fib (- n 2))))))




















































