;https://github.com/tkych/cl-spark
(ql:quickload :cl-spark)
(in-package :cl-spark)
(spark '(0 1 2 3 4 5 6 7 8) :key (lambda (x) (sin (* x pi 1/4))))
(vspark '(0 1 2 3 4 5 6 7 8) :key (lambda (x) (sin (* x pi 1/4)))
                             :size 20)
