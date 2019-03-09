;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package bash-completion
  :defer t)

(use-package emamux
  :config
  (global-set-key (kbd "H-x x") emamux:keymap))

(use-package fish-completion
  :defer t)

(use-package fish-mode
  :defer t)

;; (use-package multi-term)

(use-package sane-term
  :config
  (hx-leader-def
    "tt" 'sane-term
    "tn" 'sane-term-create))

(use-package sudo-edit
  :config
  (hx-leader-def
    "!" 'sudo-edit))

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode multi-term) . with-editor-export-editor))

;;(use-package xterm-color)

(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
