;;
;; MELPA and use-package setup
;;
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;;
;; Plugins
;;
(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (ruby-mode . lsp)
  (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

;;
;; Hooks
;;

(add-hook 'prog-mode-hook 'display-line-numbers-mode) ;; Line numbers (duh)

;;
;; Theming
;;
(use-package apropospriate-theme
  :ensure t
  :config 
  (load-theme 'apropospriate-dark t))






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



