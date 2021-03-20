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
  (let ((x (random 10))
        (y (random 10)))
    (list (get-random-op) x y)))

(defun main ()
  (let ((expr (gen-expr)))
    (write-string "Expression: ")
    (prin1 expr)
    (terpri)
    (write-string "Result:     ")
    (prin1 (eval expr))
    (terpri)))

(main)
