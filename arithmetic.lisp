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

(defun get-random-op ()
  (nth (random 4) '(+ - * /)))

(defun gen-expr ()
  (let ((x (random 10))
        (y (random 10)))
    (let ((expr (list (get-random-op) x y)))
      (print expr)
      (print (eval expr)))))
