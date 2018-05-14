;; package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("081d0f8a263358308245355f0bb242c7a6726fc85f0397d65b18902ea95da591" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (jedi ranger helm groovy-mode magit evil-leader fzf powerline markdown-mode atom-one-dark-theme yaml-mode evil goto-chg undo-tree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode t)

(setq-default indent-tabs-mode nil)
(setq-default ruby-indent-level 2)
(setq-default evil-shift-width 2)
(setq-default python-indent 4)

(add-hook 'python-mode-hook
  (function (lambda ()
          (setq evil-shift-width python-indent))))
(add-hook 'ruby-mode-hook
  (function (lambda ()
          (setq evil-shift-width ruby-indent-level))))

(load-theme 'atom-one-dark t)
(set-default-font "Liberation Mono 10")

(require 'powerline)
(powerline-default-theme)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(setq browse-url-browser-function 'browse-url-firefox)

(evil-mode 1)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(global-evil-leader-mode)

(evil-leader/set-key "f" 'helm-for-files)
(evil-leader/set-key "h" 'helm-recentf)
(evil-leader/set-key "t" 'helm-etags-select)
(evil-leader/set-key "r" 'ranger)

(global-set-key (kbd "C-x C-j") 'evil-local-mode)
