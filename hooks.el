(add-hook 'nxml-mode-hook
		  (lambda ()
			(setq indent-tabs-mode nil)))

(add-hook 'web-mode-hook
		  (lambda ()
			"Hooks for Web mode."
			(setq electric-indent-mode nil)))

(add-hook 'after-change-major-mode-hook
		  (lambda ()
			"Avoid fci + web mode bug https://github.com/fxbois/web-mode/issues/242"
			(unless (equal major-mode 'web-mode)
			  (fci-mode t))))

(provide 'hooks)
