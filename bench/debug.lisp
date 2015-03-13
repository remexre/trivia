(in-package :trivia.benchmark)

;; for debugging : 2-moku 
(in-optimizer :emilie2006)
(defun nimoku (v)
  (trivia:match v
    ((or (simple-vector 1 _ _ 1)
         (simple-vector _ 1 1 _)
         (simple-vector 1 1 _ _)
         (simple-vector _ _ 1 1)
         (simple-vector 1 _ 1 _)
         (simple-vector _ 1 _ 1)) 1)
    ((or (simple-vector 0 _ _ 0)
         (simple-vector _ 0 0 _)
         (simple-vector 0 0 _ _)
         (simple-vector _ _ 0 0)
         (simple-vector 0 _ 0 _)
         (simple-vector _ 0 _ 0)) 0)
    (_ 2)))

(print (nimoku #(0 1 1 0)))
(print (nimoku #(0 -1 -1 0)))
(print (nimoku #(0 1 1 0)))