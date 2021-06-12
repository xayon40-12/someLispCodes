;;;; titre/nom du fichier
;;; commentaire aligne a gauche qui decrit la section a venir

nil 't
1 1.0e1 2/3 #c(1 3)
"aoeu"
#\c
'aoeu
'(1 "a" 'a nil)

(defparameter a 1)
(defconstant b 2)
(defvar c 3) ;does not evaluate the value if c already exist
(setf a b)


(defparameter *global* 1)

(print "a")
(princ "a")

(read)
(read-line)
(read-char)

(eql 1 2)
(= 1 2)

(eql "a" "a")
(string= "a" "a")
#| aoneuth saotue |#
1




(format 't "Bonjour ~A.~%Il y a ~A poulets." "George" 12)
(let ((a "c"))
  ;; commentaire aligne avec le code qui decrit la ligne suivante
  (print a)) ; commentaire qui decrit la ligne a gauche
(print a)
