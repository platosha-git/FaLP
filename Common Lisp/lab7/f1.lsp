;Вариант 1
(defun isPoly (lst)
	(
		equalp lst (reverse lst)
	)
)


;Вариант2
(defun polyHndl (lst idx)
	(let 
		((len (length lst)))
		(cond 
			((<= (/ len 2) idx) T)
			
			((equalp (nth idx lst) (nth (- len idx 1) lst))
				(polyHndl lst (+ idx 1)))
		)
	)
)

(defun isPolyndrom (lst)
	(polyHndl lst 0)
)	


