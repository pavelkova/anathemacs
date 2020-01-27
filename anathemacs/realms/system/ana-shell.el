;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package emamux
  :bind-keymap
  ("H-d x" . emamux:keymap))

(use-package equake
  :general
  (general-define-key
   "C-x C-c" 'equake-check-if-in-equake-frame-before-closing) ; prevent accidental frame-closure
  :config
  (setq equake-size-width 0.99)
  (set-face-attribute 'equake-buffer-face 'nil :inherit 'default :background nil :foreground "white"))

(use-package fish-mode
  :mode ("\\.fish\\'"))

(use-package vterm)

(use-package vterm-toggle
  :general
  (ha-leader-def
    "C-t" 'vterm-toggle-cd))

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode vterm tramp-term) . with-editor-export-editor))


(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
