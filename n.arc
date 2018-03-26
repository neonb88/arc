(def l (start end)
       (let lis `(1)
         (pop lis)
         (while (<= start end)
           (= lis `(,@lis ,start))
           (++ start))
         lis))

