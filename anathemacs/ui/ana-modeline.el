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
    '(bar lsp major-mode " " modals buffer-info process " " buffer-position " "  matches word-count "     " checker debug selection-info)
    '(misc-info objed-state "     " persp-name "" mu4e " " battery " " minor-modes github vcs remote-host))
 ;; '(objed-state misc-info checker debug remote-host persp-name process grip github vcs mu4e minor-modes major-mode battery))

;;; Code:
(use-package doom-modeline
  :after minions
  :init
  (doom-modeline-mode 1)
  (doom-modeline-set-modeline 'ana-modeline 'default)
  (display-battery-mode)
  :config
  (setq doom-modeline-continuous-word-count-modes '(markdown-mode org-mode fountain-mode)
        doom-modeline-icon t
        doom-modeline-modal-icon t
        doom-modeline-mu4e t
        doom-modeline-gnus nil
        doom-modeline-irc nil
        doom-modeline-buffer-file-name-style 'truncate-with-project
        ;; doom-modeline-buffer-state-icon nil
        doom-modeline-display-default-persp-name t
        doom-modeline-buffer-modification-icon nil
        doom-modeline-minor-modes t
        doom-modeline-checker-simple-format nil
        doom-modeline-buffer-encoding nil
        doom-modeline-number-limit 999
        doom-modeline-bar-width 4
        doom-modeline-height 30
        doom-modeline-display-default-persp-name nil
        doom-modeline-window-width-limit fill-column
        doom-modeline-major-mode-color-icon t))

(use-package minions
  :init
  (minions-mode 1))

(provide 'ana-modeline)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-modeline.el ends here
