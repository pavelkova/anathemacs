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
  ;; :init
  ;; (setq lsp-keymap-prefix "H-l")
  :general
  (hl-leader-def
    "a" '(:ignore t :which-key "actions")
    "aa" 'lsp-execute-code-action
    "ah" 'lsp-document-highlight
    "al" 'lsp-avy-lens

    "F"  '(:ignore t :which-key "folders")
    "Fa" 'lsp-workspace-folders-add
    "Fb" 'lsp-workspace-blacklist-remove
    "Fr" 'lsp-workspace-folders-remove

    "G"  '(:ignore t :which-key "peeks")
    "Gg" 'lsp-ui-peek-find-definitions
    "Gi" 'lsp-ui-peek-find-implementation
    "Gr" 'lsp-ui-peek-find-references
    "Gs" 'lsp-ui-peek-find-workspace-symbol

    "g"  '(:ignore t :which-key "goto")
    "ga" 'xref-find-apropos
    "gd" 'lsp-find-declaration
    "ge" 'lsp-treemacs-errors-list
    "gg" 'lsp-find-definition
    "gh" 'lsp-treemacs-call-hierarchy
    "gi" 'lsp-find-implementation
    "gr" 'lsp-find-references
    "gt" 'lsp-find-type-definition

    "h"  '(:ignore t :which-key "help")
    "hg" 'lsp-ui-doc-glance
    "hh" 'lsp-describe-thing-at-point
    "hs" 'lsp-signature-activate

    "r"  '(:ignore t :which-key "refactoring")
    "ro" 'lsp-organize-imports
    "rr" 'lsp-rename

    "T"  '(:ignore t :which-key "toggle")
    "Ta" 'lsp-modeline-code-actions-mode
    "Tb" 'lsp-headerline-breadcrumb-mode
    "TD" 'lsp-modeline-diagnostics-mode
    "Td" 'lsp-ui-doc-mode
    "Tf" 'lsp-toggle-on-type-formatting
    "Th" 'lsp-toggle-symbol-highlight
    "TL" 'lsp-toggle-trace-io
    "Tl" 'lsp-lens-mode
    "TS" 'lsp-ui-sideline-mode
    "Ts" ' lsp-toggle-signature-auto-activate
    "TT" 'lsp-treemacs-sync-mode

    "w"  '(:ignore t :which-key "server (workspace)")
    "wD" 'lsp-disconnect
    "wd" 'lsp-describe-session
    "wq" 'lsp-workspace-shutdown
    "wr" 'lsp-workspace-restart
    "ws" 'lsp

    "="  '(:ignore t :which-key "format")
    "==" 'lsp-format-buffer
    "=r" 'lsp-format-region)
  :config
  (setq lsp-auto-configure t
        lsp-auto-guess-root t
        lsp-enable-completion-at-point t
        lsp-enable-imenu t
        lsp-enable-indentation t
        lsp-enable-semantic-highlighting t
        lsp-enable-snippet t
        lsp-enable-text-document-color t
        lsp-modeline-diagnostics-scope :workspace
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
    typescript-mode
    web-mode
    yaml-mode) . lsp-mode)
(lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode)
  :general
  (hl-leader-def
    "u"  '(:ignore t :which-key "ui")
    "us" 'lsp-ui-sideline
    "up" 'lsp-ui-peek
    "um" 'lsp-ui-imenu
    "ud" 'lsp-ui-doc)
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-delay 1
        lsp-ui-doc-use-webkit t
        ;; lsp-ui-imenu-window-width 30
        lsp-ui-imenu-auto-refresh t
        lsp-ui-peek-enable t
        lsp-ui-peek-show-directory t
        lsp-ui-sideline-ignore-duplicate t
        lsp-ui-sideline-show-diagnostics t
        lsp-ui-sideline-show-hover t
        lsp-ui-sideline-show-code-actions t
        lsp-ui-sideline-delay 1))


(use-package lsp-treemacs
  :general
  (hl-leader-def
    "t" '(:ignore t :which-key "treemacs")
    "te" 'lsp-treemacs-errors-list
    "tf" 'lsp-treemacs-quick-fix
    "ts" 'lsp-treemacs-symbols-list
    "tr" 'lsp-treemacs-references
    "ti" 'lsp-treemacs-implementations)
  :config
  (lsp-treemacs-sync-mode 1))


(use-package helm-lsp
  :general
  (hl-leader-def
    "@"    'helm-lsp-workspace-symbol
    "M-@"  'helm-lsp-global-workspace-symbol
    "a"    'helm-lsp-code-actions)
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
