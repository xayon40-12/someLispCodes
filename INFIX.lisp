;https://github.com/rigetti/cmu-infix
(ql:quickload :cmu-infix)
(in-package :cmu-infix)
(named-readtables:in-readtable cmu-infix:syntax)

(print #I(1*3+3))
