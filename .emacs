(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("959a77d21e6f15c5c63d360da73281fdc40db3e9f94e310fc1e8213f665d0278" default)))
 '(inhibit-startup-screen t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
;;use for desktop mode to save tramp buffers
(setq desktop-files-not-to-save "^$")
(setq desktop-save-mode 1)
(global-set-key (kbd "C-c d") 'desktop-change-dir)
;;(global-set-key (kbd "C-c C-d c") 'desktop-change-dir /Crewpass)
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize) ;; You might already have this line
(use-package dracula-theme
  :config (load-theme 'dracula t)
  :ensure t)
(use-package ido
  :init (ido-mode 1)
  :config
  (setq ido-save-directory-list-file "~/.emacs.d/tmp/ido"
		ido-enable-flex-matching t
		ido-use-virtual-buffers t))
(use-package ido-ubiquitous
  :init
  (require 'ido)
  (ido-ubiquitous-mode 1)
  :ensure t
  :demand t)
(use-package ido-vertical-mode
  :init
  (require 'ido)
  (require 'ido-ubiquitous)
  (ido-vertical-mode 1)
  :ensure t
  :demand t)
(use-package smex
  :init
  (require 'recentf)
  (require 'ido)
  ;;(make-directory "~/.emacs.d/tmp/")
  ;;(write-region "" nil "~/.emacs.d/tmp/smex-items")
  :config
  (setq smex-save-file "~/.emacs.d/tmp/smex-items")
  (smex-initialize)
  :bind (("M-x" . smex)
		 ("M-X" . smex-major-mode-commands)
		 ("C-c M-x" . execute-extended-command))
  :ensure t
  :demand t)
