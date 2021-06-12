;(in-package :myapp)

(defsketch tutorial
    ((title "tuto")
     (width 1500)
     (height 1500)
     (a 0))
  (labels ((ccircle (x y d a)
             (let ((d (* d 1/2))
                   (a a)
                   (n 3))
                   (with-pen (make-pen :fill (rgb 1 1 1) :stroke (rgb 0 1 1) :weight 1)
                     (circle x y (/ d 1))
                     (if (> d 8)
                         (dotimes (i n)
                           (ccircle (+ x (* d (cos a))) (+ y (* d (sin a))) d (* a 1))
                           (incf a (* 2 +pi+ (/ 1 n)))))))))
    (ccircle (/ width 2) (/ height 2) (/ width 2) a))
  (incf a (/ +pi+ 300)))

(make-instance 'tutorial)


#|(defun main ()
  (make-instance 'tutorial)
  (read))

(sb-ext:save-lisp-and-die "triangle"
:executable t
:toplevel 'main)|#
