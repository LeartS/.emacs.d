;; MELPA Repository
(require 'package)
(package-initialize)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(require 'smart-tabs-mode)
(smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'ruby)

;; Autocomplete
;; (require 'auto-complete)
;; (global-auto-complete-mode t)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; Web mode customization
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'lolcode-mode)

(require 'fill-column-indicator)
(setq fci-rule-column 80)

(load-theme 'monokai t)

(require 'switch-window)

(provide 'packages)

