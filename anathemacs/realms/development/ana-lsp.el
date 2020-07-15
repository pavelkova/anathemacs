;;; ana-lsp.el --- Package configurations for working with Lisp.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;; Replace individual language support with LSP.
;;

;;; Code:
(use-package company-lsp
  :config
  (push 'company-lsp company-backends))

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
  (setq lsp-prefer-flymake nil
        lsp-enable-indentation t
        lsp-enable-snippet t
        lsp-auto-guess-root t
        lsp-enable-completion-at-point t
        lsp-enable-semantic-highlighting t
        lsp-enable-imenu t
        lsp-enable-text-document-color t
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
    rjsx-mode
    ruby-mode
    web-mode
    yaml-mode) . lsp)
  (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp . lsp-ui-mode)
  :general
  (hd-leader-def
    "l:" 'lsp-ui-sideline
    "lp" 'lsp-ui-peek
    "lm" 'lsp-ui-imenu
    "ld" 'lsp-ui-doc)
  :config
  (setq lsp-ui-sideline-ignore-duplicate t))


(use-package lsp-treemacs
  :config
  (lsp-treemacs-sync-mode 1)
  :general
  (hd-leader-def
    "le" 'lsp-treemacs-errors-list
    "lf" 'lsp-treemacs-quick-fix
    "ls" 'lsp-treemacs-symbols-list
    "lr" 'lsp-treemacs-references
    "li" 'lsp-treemacs-implementations))


(use-package helm-lsp
  :general
  (hd-leader-def
    "l@"    'helm-lsp-workspace-symbol
    "l M-@" 'helm-lsp-global-workspace-symbol
    "la"    'helm-lsp-code-actions))

;; language-specific

;; (use-package lsp-ccls)

(use-package lsp-java
  :after lsp-mode)

(provide 'ana-lsp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lsp.el ends here
