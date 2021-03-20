;;; ana-lsp.el --- Package configurations for working with Lisp.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;; Replace individual language support with LSP.
;;

;;; Code:
;; (use-package company-lsp
;;   :config
;;   (push 'company-lsp company-backends))

(use-package dap-mode
  :after lsp-mode
  :delight
  :config
  (dap-mode 1)
  (dap-ui-mode 1)
  (require 'dap-python))

(use-package lsp-mode
  :commands lsp
  :delight
  :init
  (setq lsp-keymap-prefix "H-l")
  :config
  (setq lsp-auto-configure t
        lsp-auto-guess-root t
        lsp-enable-completion-at-point t
        lsp-enable-imenu t
        lsp-enable-indentation t
        lsp-enable-semantic-highlighting t
        lsp-enable-snippet t
        lsp-enable-text-document-color t
        lsp-prefer-flymake nil
        lsp-clients-emmy-lua-jar-path "~/.config/emacs/EmmyLua-LS-all.jar")
  :hook
  ((css-mode
    django-mode
    elixir-mode
    erlang-mode
    eslint-mode
    ess-r-mode
    go-mode
    haskell-mode
    java-mode
    js-mode
    latex-mode
    lua-mode
    php-mode
    python-mode
    ruby-mode
    web-mode
    yaml-mode) . lsp)
  (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp . lsp-ui-mode)
  ;; :general
  ;; (hl-leader-def
  ;;   ":" 'lsp-ui-sideline
  ;;   "p" 'lsp-ui-peek
  ;;   "m" 'lsp-ui-imenu
  ;;   "d" 'lsp-ui-doc)
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-delay 1
        lsp-ui-doc-use-webkit t
        lsp-ui-peek-enable t
        lsp-ui-peek-show-directory t
        lsp-ui-sideline-ignore-duplicate t
        lsp-ui-sideline-show-diagnostics t
        lsp-ui-sideline-show-hover t
        lsp-ui-sideline-show-code-actions t
        lsp-ui-sideline-delay 1))


(use-package lsp-treemacs
  ;; :general
  ;; (hl-leader-def
  ;;   "e" 'lsp-treemacs-errors-list
  ;;   "f" 'lsp-treemacs-quick-fix
  ;;   "s" 'lsp-treemacs-symbols-list
  ;;   "r" 'lsp-treemacs-references
  ;;   "i" 'lsp-treemacs-implementations)
  :config
  (lsp-treemacs-sync-mode 1))


(use-package helm-lsp
  ;; :general
  ;; (hl-leader-def
  ;;   "@"    'helm-lsp-workspace-symbol
  ;;   "M-@" 'helm-lsp-global-workspace-symbol
  ;;   "a"    'helm-lsp-code-actions)
  :config
  (define-key lsp-mode-map [remap xref-find-apropos] #'helm-lsp-workspace-symbol))

(use-package lsp-origami
  :config
  (add-hook 'lsp-after-open-hook #'lsp-origami-try-enable))

;; language-specific

;; (use-package lsp-ccls)

;; (use-package lsp-java
;;   :after lsp-mode)

(provide 'ana-lsp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lsp.el ends here
