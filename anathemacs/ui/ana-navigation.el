;;; ana-navigation.el --- Directory browsers and sidebars.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; HELM
(use-package helm
  :delight helm-mode
  :general
  (general-define-key
   "M-x"     'helm-M-x
   "M-y"     'helm-show-kill-ring
   "<f10>"   'helm-buffers-list
   "S-<f10>" 'helm-recentf)
  (ha-leader-def
    "b" 'helm-mini
    ;; "h" 'helm-command-prefix
    "j" 'helm-semantic-or-imenu)
  (cx-leader-def
    "C-f" 'helm-find-files)
  :config
  (helm-mode 1)
  (setq helm-reuse-last-window-split-state t
        helm-always-two-windows t
        helm-split-window-inside-p t
        helm-autoresize-mode t
        helm-autoresize-max-height 50
        helm-autoresize-min-height 5
        helm-left-margin-width 2
        helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t
        helm-semantic-fuzzy-match t
        helm-imenu-fuzzy-match t)
  (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages))

(use-package helm-descbinds
  :general
  (ha-leader-def
    "K" 'helm-descbinds)
  :config
  (helm-descbinds-mode))

(use-package helm-file-preview
  :config
  (helm-file-preview-mode 1)
  (setq helm-file-preview-preview-only t))

(use-package helm-mode-manager)

;; IBUFFER & IMENU
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

(use-package imenu)

(use-package imenu-list
  :general
  (ha-leader-def
    "'" 'imenu-list-smart-toggle)
  :config
  (setq imenu-list-focus-auto-resize t))


;; SEARCH

(use-package ace-isearch
  :delight ace-isearch-mode
  :bind ("C-." . ace-jump-mode)
  :config
  (global-ace-isearch-mode +1))

(use-package ag)

(use-package helm-ag
  :general
  (ha-leader-def
    "a"  '(:ignore t :which-key "helm-ag")
    "ag" 'helm-ag
    "af" 'helm-ag-this-file
    "aG" 'helm-do-ag
    "aF" 'helm-do-ag-this-file
    "ap" 'helm-ag-project-root
    "aP" 'helm-do-ag-project-root
    "ab" 'helm-ag-buffers
    "aB" 'helm-do-ag-buffers
    "ap" 'helm-ag-pop-stack
    "aq" 'helm-ag-clear-stack)
  :config
  (setq helm-ag-fuzzy-match t))

(use-package helm-swoop
  :general
  (general-define-key
   "M-i" 'helm-swoop))

(use-package helm-lines
  :commands (helm-lines)
  :general
  (cc-leader-def
    "L" 'helm-lines))

(provide 'ana-navigation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-navigation.el ends here
