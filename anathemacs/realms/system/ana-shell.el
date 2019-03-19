;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; (use-package bash-completion)

(use-package emamux
  :bind-keymap
  ("H-a x" . emamux:keymap)
  :general
  (ha-leader-def
    "x" '(:ignore t :which-key "tmux")))

;; (use-package fish-completion)

;; (use-package fish-mode)

;; (use-package multi-term)

(use-package sane-term
  :general
  (ha-leader-def
    "tt" 'sane-term
    "tn" 'sane-term-create))

(use-package shx)

(use-package sudo-edit
  :general
  (ha-leader-def
    "!" 'sudo-edit))

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode multi-term) . with-editor-export-editor))

;;(use-package xterm-color)

(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
