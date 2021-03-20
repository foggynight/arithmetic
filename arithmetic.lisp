;; *** arithmetic ***
;;
;; Arithmetic drills at the command line
;;
;; For my son
;; You're not here yet, and I can't wait to meet you
;; Love you bud
;;                                  Dad - 2021-01-07
;;
;; Copyright (C) 2021 Robert Coffey
;; All rights reserved

(setf *random-state* (make-random-state t))

(defun get-random-op ()
  (nth (random 4) '(+ - * /)))

(defun gen-sexpr ()
  (list (get-random-op) (random 10) (random 10)))

(defun print-sexpr-as-infix (sexpr)
  (fresh-line)
  (princ (cadr sexpr))
  (princ " ")
  (princ (car sexpr))
  (princ " ")
  (princ (caddr sexpr)))

(defun main ()
  (let ((sexpr (gen-sexpr)))
    (print-sexpr-as-infix sexpr)))

(main)
