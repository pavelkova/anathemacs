;;; ana-navigation.el --- Directory browsers and sidebars.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:


(use-package hyperspace
  :general
  (general-define-key
   "H-s" 'hyperspace))

(setq ibuffer-expert t
      ibuffer-show-empty-filter-groups nil
      ibuffer-filter-group-name-face 'org-level-1
      ibuffer-modified-char ?\★
      ibuffer-locked-char ?\-
      ibuffer-read-only-char ?\-
      ibuffer-marked-char ?\✓
      ibuffer-deletion-char ?\✕
      ibuffer-deletion-face 'org-agenda-done
      ibuffer-use-header-line nil)

(use-package imenu
  :general
  (ha-leader-def
    "j"  'counsel-imenu))

(use-package imenu-list
  :general
  (ha-leader-def
    "'" 'imenu-list-smart-toggle)
  :config
  (setq imenu-list-focus-auto-resize t))

;; REPLACE NEOTREE WITH TREEMACS TO UTILIZE PER-FRAME BUFFERS.
(use-package treemacs
  :general
  (general-define-key
   "<f8>" 'treemacs)
  :config
  ;; (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action)
  (setq treemacs-no-png-images t
        treemacs-width 30
        treemacs-follow-after-init t))

(use-package treemacs-magit
  :after treemacs magit)

(use-package treemacs-projectile
  :after treemacs projectile)

(provide 'ana-navigation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-navigation.el ends here
