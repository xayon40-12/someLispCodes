(let ((n 1000)) 
  (do ((i 0 (1+ i))
       (s 0 (+ s (do ((i 0 (1+ i))
                      (s 0 (+ s (- (* (random 2) 2) 1))))
                     ((> i n) (* s s))))))
      ((> i n) (float (/ s n)))))
