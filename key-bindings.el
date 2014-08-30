;; Comment region (or the entire line if no region selected)
;; at the right position
(global-set-key (kbd "C-c c") (quote comment-or-uncomment-region-or-line))

;; Show whitespaces
(global-set-key (kbd "C-c w")
				(lambda () (interactive)
				  (whitespace-mode 'toggle)))

(provide 'key-bindings)
