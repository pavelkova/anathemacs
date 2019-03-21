;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package emamux
  ;; :bind-keymap
  ;; ("H-a x" . emamux:keymap)
  :general
  (ha-leader-def
    "x" '(:ignore t :which-key "tmux"))
  (ha-leader-def
    "tx" 'emamux:send-command
    "tX" 'emamux:yank-from-list-buffers))

(use-package sane-term
  :general
  (ha-leader-def
    "tt" 'sane-term
    "tn" 'sane-term-create))

(use-package shx)

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode multi-term tramp-term) . with-editor-export-editor))


(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
