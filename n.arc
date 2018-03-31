(def l (start end)
       (let lis `(1)
         (pop lis)
         (while (<= start end)
           (= lis `(,@lis ,start))
           (++ start))
         lis))
(def fib (n)
    (if (is n 0)
        1
        (is n 1)
        1
        (+ (fib (- n 1))
           (fib (- n 2)))))

(def pr_many (n)
 (repeat n (prn "hi class")))

(def hi () (prn "hi"))

(def hi2 ()
 (do (hi)
     (hi)))

(def fact (n)
 (if (is n 1)
     1
     (* n (fact (- n 1)))))































































