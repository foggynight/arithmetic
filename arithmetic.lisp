#!/usr/bin/env -S sbcl --script

(setq *random-state* (make-random-state t))

(defun get-expr-count ()
  (write-string "Expression count: ")
  (finish-output)
  (read))

(defun get-random-op ()
  (nth (random 4) '(+ - * /)))

(defun gen-expr ()
  (list (get-random-op)
        (random 10)
        (min (+ (random 10) 1) 9)))

(defun print-expr-infix (expr)
  (format T "~d ~a ~d = "
          (cadr expr)
          (car expr)
          (caddr expr))
  (finish-output))

(defun check-result (expr result)
  (equal (eval expr) result))

(defun main ()
  (let ((score 0)
        (expr-count (get-expr-count)))
    (terpri)
    (dotimes (n expr-count)
      (let ((expr (gen-expr))
            (result 0))
        (print-expr-infix expr)
        (setq result (read))
        (if (check-result expr result)
            (setq score (1+ score)))))
    (terpri)
    (format T "Final score: ~d/~d"
            score
            expr-count)
    (terpri)))

(main)
