(defun dec_mul (lst1 lst2)
	(mapcar 
		#' (lambda (x)
			(mapcar
				#' (lambda (y)
					(list x y)
				)
				lst2
			)
		)
		lst1
	)	
)