;;; ana-helm.el --- Init helm

;;; Commentary:
;;
;;

;;; Code:

(use-package ace-isearch
  :delight ace-isearch-mode
  :bind ("C-." . ace-jump-mode)
  :config
  (global-ace-isearch-mode +1))

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

(use-package helm-company
  :after company
  :bind
  (:map company-mode-map
        ("C-:" . helm-company)
        :map company-active-map
        (("C-:" . helm-company))))

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

(use-package helm-gitignore
  :general
  (ha-leader-def
    "gI" 'helm-gitignore))

(use-package helm-ls-git
  :general
  (ha-leader-def
    "C-d" 'helm-browse-project))

(use-package helm-lsp
  :general
  (hd-leader-def
    "l@"    'helm-lsp-workspace-symbol
    "l M-@" 'helm-lsp-global-workspace-symbol
    "la"    'helm-lsp-code-actions))

(use-package helm-mode-manager)

(use-package helm-swoop
  :general
  (general-define-key
   "M-i" 'helm-swoop))

(use-package helm-smex
  :general
  (general-define-key
   "M-X"     'helm-smex
   "H-A"     'helm-smex-major-mode-commands))

;; ADDITIONAL PACKAGES
(use-package helm-bibtex)

(use-package helm-dash
  :general
  (general-define-key
    "H-_" 'helm-dash)
  :config
  (setq helm-dash-browser-func 'eww))

;; (use-package helm-gtags)

(use-package helm-lines
  :commands (helm-lines)
  :general
  (cc-leader-def
    "L" 'helm-lines))

(use-package helm-org
  :after org-ql
  :general
  (ha-leader-def
    "o" 'helm-org-ql))

(use-package helm-org-rifle
  :general
  (hs-leader-def
    "o" 'helm-org-rifle)
  :config
  (setq helm-org-rifle-fontify-headings nil))

;; realms/project-management/projectile.el
(use-package helm-projectile
  :after projectile
  :init
  (helm-projectile-on)
  :config
  (setq projectile-completion-system 'helm))

;; tools/ana-snippets.el
(use-package helm-c-yasnippet
  :general
  (cc-leader-def
    "y" 'helm-yas-complete)
  :config
  (setq helm-yas-space-match-any-greedy t))

(use-package helm-recoll
  :general
  (hs-leader-def
    "rr" 'helm-recoll)
  :init
  (setq helm-recoll-directories
        '(("biblioteca" . "~/.recoll"))))

(use-package helm-tramp
  :after helm
  :general
  (ha-leader-def
  "C-r" 'helm-tramp)
  :config
  (setq tramp-default-method "ssh"))

(use-package helm-proc
  :general
  (ha-leader-def
    "/p" 'helm-proc))

(use-package helm-systemd
  :general
  (ha-leader-def
    "/d" 'helm-systemd)
  :config
  (setq helm-systemd-list-all t))

(provide 'ana-helm)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-helm.el ends here
