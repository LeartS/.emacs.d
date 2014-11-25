(add-hook 'nxml-mode-hook
		  (lambda ()
			(setq indent-tabs-mode nil)))

(add-hook 'web-mode-hook
		  (lambda ()
			"Hooks for Web mode."
			(setq electric-indent-mode nil)))

(add-hook 'lolcode-mode-hook
          (lambda ()
            (set-variable 'shift-select-mode nil)))

(add-hook 'after-change-major-mode-hook
		  (lambda ()
			"Avoid fci + web mode bug https://github.com/fxbois/web-mode/issues/242
and don't show column ruler in modes for which it doesn't make sense"
			(unless (member major-mode '(web-mode sql-mode sql-interactive-mode))
			  (fci-mode t))))

(provide 'hooks)
