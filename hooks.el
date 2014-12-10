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

(add-hook 'python-mode-hook
          (lambda ()
            (setq-default indent-tabs-mode nil)
            (anaconda-mode t)
            (eldoc-mode t)))

(add-hook 'after-change-major-mode-hook
		  (lambda ()
			"Avoid fci + web mode bug https://github.com/fxbois/web-mode/issues/242
and don't show column ruler in modes for which it doesn't make sense"
			(unless (member major-mode '(web-mode sql-mode sql-interactive-mode))
			  (fci-mode t))))

;; Workaround for company and fci-mode bug
;; https://github.com/company-mode/company-mode/issues/180
(defvar-local company-fci-mode-on-p nil)

(defun company-turn-off-fci (&rest ignore)
  (when (boundp 'fci-mode)
    (setq company-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

(defun company-maybe-turn-on-fci (&rest ignore)
  (when company-fci-mode-on-p (fci-mode 1)))

(add-hook 'company-completion-started-hook 'company-turn-off-fci)
(add-hook 'company-completion-finished-hook 'company-maybe-turn-on-fci)
(add-hook 'company-completion-cancelled-hook 'company-maybe-turn-on-fci)

(provide 'hooks)
