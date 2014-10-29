;; Comment region (or the entire line if no region selected)
;; at the right position
(global-set-key (kbd "C-c c") (quote comment-or-uncomment-region-or-line))

;; Show whitespaces
(global-set-key (kbd "C-c w")
				(lambda () (interactive)
				  (whitespace-mode 'toggle)))

;; move lines/region and and down
(global-set-key (kbd "C-c p") (quote move-text-up))
(global-set-key (kbd "C-c n") (quote move-text-down))

;; change C-x o to visual switch-window (requires switch-window package)
(global-set-key (kbd "C-x o") (quote switch-window))

(provide 'key-bindings)
