;;; ana-layout.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; SUBLIMITY
;; (use-package sublimity
;;   :general
;;   (ha-leader-def
;;     "!" 'sublimity-mode)
;;   :config
;;   ;; (sublimity-mode 1)
;;   (setq sublimity-map-size 20
;;         sublimity-map-fraction 0.3
;;         sublimity-map-text-scale -7
;;         sublimity-scroll-weight 5
;;         sublimity-scroll-drift-length 10
;;         sublimity-attractive-centering-width 110))

;; SIDEBAR
(use-package treemacs
  :general
  (general-define-key
   "<f7>" 'treemacs)
  :config
  (setq treemacs-no-png-images t
        treemacs-width 20
        treemacs-follow-after-init t))

(use-package treemacs-magit
  :after treemacs magit)

(use-package treemacs-projectile
  :after treemacs projectile)

(use-package treemacs-persp
  :after treemacs persp-mode
  :config (treemacs-set-scope-type 'Perspectives))

(use-package dired-sidebar
  :general
  (general-define-key
   "<f6>" 'dired-sidebar-toggle-sidebar))

;; TAB BAR
(use-package centaur-tabs
  :general
  (general-define-key
   "<f9>"      'centaur-tabs-mode
   "C-<prior>" 'centaur-tabs-backward
   "C-<next>"  'centaur-tabs-forward)
  :config
  (centaur-tabs-mode t)
  (centaur-tabs-headline-match)
  (centaur-tabs-change-fonts "Cantarell" 80)
  (setq centaur-tabs-style "alternate"
        centaur-tabs-height 20
        centaur-tabs-set-icons t
        centaur-tabs-plain-icons t
        centaur-tabs-gray-out-icons 'buffer
        centaur-tabs-set-bar 'over
        centaur-tabs-set-modified-marker t)
  :hook
  ((dired-mode treemacs-mode) . centaur-tabs-local-mode))

;; MODELINE
(use-package doom-modeline
  :after minions
  :init
  (doom-modeline-mode 1)
  :config
  (progn
    (doom-modeline-def-modeline 'ana-modeline
      '(bar lsp major-mode " " modals buffer-info process " " buffer-position " "  matches word-count "     " checker debug selection-info)
      '(misc-info objed-state "     " persp-name "" mu4e " " battery " " minor-modes github vcs remote-host))
    (doom-modeline-set-modeline 'ana-modeline 'default))
  (setq doom-modeline-continuous-word-count-modes '(markdown-mode org-mode fountain-mode)
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
        doom-modeline-window-width-limit fill-column
        doom-modeline-major-mode-color-icon t))


;; default modeline
;; (doom-modeline-def-modeline 'main
;;   '(bar workspace-name window-number modals matches buffer-info remote-host buffer-position word-count parrot selection-info)
;;   '(objed-state misc-info persp-name battery grip irc mu4e gnus github debug lsp minor-modes input-method indent-info buffer-encoding major-mode process vcs checker))

(use-package minions
  :init
  (minions-mode 1))

(provide 'ana-layout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-layout.el ends here
