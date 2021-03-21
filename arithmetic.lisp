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
  (list (get-random-op)
        (random 10)
        (min (+ (random 10) 1) 9)))

(defun print-expr-infix (expr)
  (fresh-line)
  (format T "~d ~a ~d = "
          (cadr expr)
          (car expr)
          (caddr expr))
  (finish-output))

(defun check-result (expr result)
  (equal (eval expr) result))

(defun main ()
  (let ((score 0)
        (expr (gen-expr)))
    (print-expr-infix expr)
    (prin1 (check-result expr (read)))
    (terpri)))

(main)
