(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 '(package-selected-packages (quote (evil goto-chg undo-tree))))
(custom-set-faces)
(evil-mode 1)
