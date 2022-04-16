;; Boilerplate for the use-package package
(load (locate-user-emacs-file "init-use-package.el") nil :nomessage)

;;
;; Plugins
;;
(use-package apropospriate-theme
  :ensure t
  :config 
  (load-theme 'apropospriate-dark t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration))

(use-package ruby-mode
  :ensure t
  :after lsp-mode
  :hook (
  (ruby-mode . lsp-deferred)))

;;
;; Hooks
;;
(add-hook 'prog-mode-hook 'display-line-numbers-mode) ;; Line numbers (duh)

