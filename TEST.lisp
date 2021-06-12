(+ 1 2)
(format t "hello, world~%")
(/ 1 3 4)
(defun p (x)
    (* x x x))
(p 3)
(*)
(- 1 )
(+ 1 (/ 3 7))

(read)
(aref #2a ((1 2) (3 4)) 1 1)
(svref #(1 32 4) 1)
(aref (make-array '(2 3) :initial-element 1) 0 1)
(defparameter arr nil)
(setf arr (make-array '(2 2 2 2 2 2 2 2) :initial-element 1))
arr
(position 'a '((b a) (a b) (c a u e) a)
          :key #'(lambda (x) 
                   (and (listp x)
                        (car x))))

(dotimes (i 10) (format t "~A" i) (format t "~%"))
(digit-char-p (char "1234" 3))
(+ 1 nil)

(assoc 'a '((a . b) (c . d)))

(defun occurences (lst)
  (let ((occ '()))
    (dolist (o lst)
      (let ((m (assoc o occ)))
        (if m
            (setf (cdr m) (+ (cdr m) 1))
            (push (cons o 1) occ))))
    (sort occ #'> :key #'cdr)))

(occurences '(a b a b a c))

(defun shortest-path (start end net)
  (breadth-first (list (list start)) end net))

(defun breadth-first (paths end net)
  (let ((path (car paths)))
    (if (eql (car path) end)
        (reverse path)
        (let ((nexts (cdr (assoc (car path) net))))
          (and nexts
               (breadth-first (append (cdr paths)
                                      (mapcar #'(lambda (x) (cons x path)) nexts))
                              end net))))))

(shortest-path 'a 'd '((a b c) (b c) (c d)))
; todo shortest and longets path

(adjoin 'a '(a b c))
(append '(a b c) '(d nil f))
(defparameter x '(a b))
(setf (cdr (cdr x)) '(c))

(do ((i 0 (1+ i)))
    ((= i 10) i)
  (print i))

(remove nil '(a nil a nil b))
(adjoin '(a b) '((a b) (d e)) :test #'equal)
(remove-duplicates '((a b) (c d) (a b) (d e) (c d)) :test #'equal)


(loop (print (eval (read))))

(max '(1 3) '(2 2) '(2 4) :key #'car)

most-positive-single-float

(let ((n 10000))
  (do* ((i 0 (1+ i))
        (s 0.0 (+ s (expt (* (- (random 2.0) 1) (expt 3.0 1/2)) 2))))
      ((>= i n) (/ s n))))

(print #i(1 + 2))
(map ^(+ 1 %) '(1 2 3))

1
