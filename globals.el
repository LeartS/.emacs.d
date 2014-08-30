;; Emacs appeareance
;;  - No toolbar on X
(tool-bar-mode -1)

;;  - No startup screen
(setq-default inhibit-startup-screen t)

;;  - Set window title to current buffer path
(setq-default frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Save settings
(setq-default
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; Bar cursor
;; (setq-default cursor-type '(bar . 1))

;; Highlight matching parent
(show-paren-mode t)

;; AUto refresh buffer
(global-auto-revert-mode 1)

;; Show keystrokes
(setq-default echo-keystrokes 0.1)

;; Replace current selection
(delete-selection-mode 1)

;; tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Autoindent
(setq-default electric-indent-mode 1)

;; Line and column numbers
(setq-default linum-format "%3d ")
(global-linum-mode t)
(column-number-mode t)

(provide 'globals)
