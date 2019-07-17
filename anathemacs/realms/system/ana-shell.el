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
  (hd-leader-def
    "tx" 'emamux:send-command
    "tX" 'emamux:yank-from-list-buffers))

(use-package fish-mode
  :mode ("\\.fish\\'"))

(use-package sane-term
  :general
  (hd-leader-def
    "tt" 'sane-term
    "tn" 'sane-term-create))

(use-package shx)

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode multi-term tramp-term) . with-editor-export-editor))


(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
