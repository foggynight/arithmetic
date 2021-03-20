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

(defun gen-expr ()
  (list (get-random-op) (random 10) (random 10)))

(defun print-drill (expr)
  (fresh-line)
  (princ (cadr expr))
  (princ " ")
  (princ (car expr))
  (princ " ")
  (princ (caddr expr))
  (write-string " = ")
  (finish-output))

(defun check-result (expr input)
  (eq (eval expr) input))

(defun main ()
  (let ((score 0)
        (expr (gen-expr)))
    (print-drill expr)
    (prin1 (check-result expr (read)))
    (terpri)))

(main)
