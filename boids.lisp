(ql:quickload :sketch)
(in-package :sketch)

(defun draw_boid (x y a)
  (let ((d 50)
         (a0 a)
         (a1 (+ a (* 2 pi 1/3)))
         (a2 (+ a (* 4 pi 1/3))))

    (with-pen pen (circle x y d))
    (with-pen pen2 (circle (+ x (* d (cos a0))) (+ y (* d (sin a0))) (/ d 2)))

    )
)


(defun gen (n w h)
    (loop for i from 0 to n
          collect (list (random w) (random h) (random (* 2 pi))))
  )

(defun dir (v)
  (- (random (* 2.0 v)) v))

(defun clamp (b d)
  (if (< (car b) d) (setf (car b) (- 800 d)))
  (if (> (car b) (- 800 d)) (setf (car b) d))
  (if (< (cadr b) d) (setf (cadr b) (- 800 d)))
  (if (> (cadr b) (- 800 d)) (setf (cadr b) d))
  )

(defparameter boids (gen 10 800 800))
(defparameter pen (make-pen :fill (rgb 1 0 0)) )
(defparameter pen2 (make-pen :fill (rgb 0 0 1)) )

(defsketch tutorial
    ((title "tuto")
     (width 800)
     (height 800))
  (with-pen (make-pen :fill (rgb 1 0 0) :stroke (rgb 1 0 1))
    (dolist (b boids)
      (incf (car b) (dir 10))
      (incf (cadr b) (dir 10))
      (incf (caddr b) (dir 0.3))
      (clamp b 0)
      (apply #'draw_boid b))
    )
  )

(make-instance 'tutorial)
