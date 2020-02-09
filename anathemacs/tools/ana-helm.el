;;; ana-helm.el --- Init helm

;;; Commentary:
;;
;;

;;; Code:

(use-package ace-isearch
  :init
  (global-ace-isearch-mode +1))

(use-package helm
  :init
  (helm-mode 1)
  (global-unset-key (kbd "C-x c"))
  :general
  (general-define-key
   "M-x" 'helm-M-x
   "M-y" 'helm-show-kill-ring)
  (ha-leader-def
    "b" 'helm-mini
    "h" 'helm-command-prefix
    "j" 'helm-semantic-or-imenu)
  (cx-leader-def
   "C-f" 'helm-find-files)
  :config
  (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)
  (setq helm-autoresize-mode t
        helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t
        helm-semantic-fuzzy-match t
        helm-imenu-fuzzy-match t))

(use-package helm-company
  :after company
  :bind
  (:map company-mode-map
        ("C-:" . helm-company)
        :map company-active-map
        (("C-:" . helm-company))))

(use-package helm-descbinds
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

(use-package helm-lsp)

(use-package helm-mode-manager)

(use-package helm-org-rifle
  :general
  (hs-leader-def
    "o" 'helm-org-rifle))

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

;; realms/project-management/projectile.el
(use-package helm-projectile
  :after projectile
  :config
  (setq projectile-completion-system 'helm))

;; tools/ana-snippets.el
(use-package helm-c-yasnippet
  :general
  (cc-leader-def
    "y" 'helm-yas-complete)
  :config
  (setq helm-yas-space-match-any-greedy t))

(provide 'ana-helm)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-helm.el ends here
