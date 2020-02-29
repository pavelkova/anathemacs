;;; ana-modeline.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;; default modeline
;; (doom-modeline-def-modeline 'main
;;   '(bar workspace-name window-number modals matches buffer-info remote-host buffer-position word-count parrot selection-info)
;;   '(objed-state misc-info persp-name battery grip irc mu4e gnus github debug lsp minor-modes input-method indent-info buffer-encoding major-mode process vcs checker))

;; Define custom doom-modeline
(doom-modeline-def-modeline 'ana-modeline
  '(bar lsp modals buffer-info buffer-position word-count matches selection-info)
  '(objed-state misc-info checker debug remote-host persp-name process grip github vcs mu4e minor-modes major-mode battery))

;;; Code:
(use-package doom-modeline
  :init
  (doom-modeline-set-modeline 'ana-modeline 'default)
  :config
  (doom-modeline-mode 1)
  (setq doom-modeline-continuous-word-count-modes '(markdown-mode org-mode fountain-mode)
        doom-modeline-modal-icon nil
        doom-modeline-mu4e t
        doom-modeline-gnus nil
        doom-modeline-irc nil
        doom-modeline-buffer-file-name-style 'truncate-with-project
        doom-modeline-buffer-state-icon t
        doom-modeline-buffer-modification-icon nil
        doom-modeline-minor-modes t
        doom-modeline-checker-simple-format nil
        doom-modeline-buffer-encoding nil
        doom-modeline-number-limit 999
        doom-modeline-window-width-limit fill-column
        doom-modeline-major-mode-color-icon nil))

(use-package minions
  :config (minions-mode 1))

(provide 'ana-modeline)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-modeline.el ends here
