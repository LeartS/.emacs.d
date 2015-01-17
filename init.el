;; System wide settings that influence Emacs:
;; - Set caps lock as CTRL key
;; - learn to use left Shift
;; - edit emacs24.desktop: add -mm to the launch string


;; Set path to dependencies
(setq site-lisp-dir (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

(require 'globals)
(require 'packages)
(require 'hooks)
(require 'mode-settings)
(require 'functions)
(require 'key-bindings)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))
