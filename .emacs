;; package manager
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(tool-bar-mode -1)
(load-theme 'atom-one-dark t)
(set-default-font "Liberation Mono 10")

(require 'powerline)
(powerline-default-theme)

(setq browse-url-browser-function 'browse-url-firefox)

(evil-mode 1)

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
    (fzf powerline markdown-mode atom-one-dark-theme yaml-mode evil goto-chg undo-tree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
