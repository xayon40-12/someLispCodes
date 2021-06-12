(ql:quickload :cl-cuda)

(in-package :cl-user)
(defpackage cl-cuda-examples.vector-add
  (:use :cl
        :cl-cuda))
(in-package :cl-cuda-examples.vector-add)

(defkernel vec-add-kernel (void ((a float*)))
  (let ((i block-idx-x))
    (set (aref a i) (* 1.0 i))))

(defun main ()
  (let* ((dev-id 0)
         (n 16))
    (with-cuda (dev-id)
      (with-memory-blocks ((a 'float n))
        (sync-memory-block a :host-to-device)
        (vec-add-kernel a :grid-dim (list n 1 1))
        (sync-memory-block a :device-to-host)
        (dotimes (i n) (print (memory-block-aref a i)))))))

(main)
1
