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
  :diminish t
  :config
  (dap-mode 1)
  (dap-ui-mode 1)
  (require 'dap-python))

(use-package lsp-mode
  :commands lsp
  :diminish lsp-mode
  :general
  (hd-leader-def
    ".b"  'lsp-format-buffer
    ".B"  'lsp-format-region
    ".d"  'lsp-describe-thing-at-point
    ".D"  'lsp-describe-session
    ".e"  'lsp-treemacs-errors-list
    ".f"  'lsp-find-definition
    ".F"  'lsp-find-references
    ".g"  'lsp-goto-type-definition
    ".G"  'lsp-goto-implementation
    ".h"  'lsp-symbol-highlight
    ".l"  '(:ignore t :which-key "lens")
    ".lh" 'lsp-lens-hide
    ".lm" 'lsp-lens-mode
    ".ls" 'lsp-lens-show
    ".o"  'lsp-organize-imports
    ".r"  'lsp-rename
    ".s"  'lsp-treemacs-symbols
    ".w"  '(:ignore t :which-key "workspace")
    ".w," 'lsp-restart-workspace
    ".wa" 'lsp-workspace-folders-add
    ".wo" 'lsp-workspace-folders-open
    ".wr" 'lsp-workspace-folders-remove
    ".ws" 'lsp-workspace-folders-switch
    ".x"  'lsp-execute-code-action
    ".X"  'lsp-disconnect)
  :config
  (setq lsp-prefer-flymake nil
        lsp-enable-indentation t
        lsp-enable-snippet t
        lsp-auto-guess-root t
        lsp-enable-completion-at-point t)
  :hook
  ((css-mode django-mode elixir-mode go-mode haskell-mode java-mode js-mode php-mode python-mode rjsx-mode ruby-mode web-mode) . lsp))

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

;; language-specific

;; (use-package lsp-ccls)

(use-package lsp-haskell
  :after lsp-mode)

(use-package lsp-java
  :after lsp-mode)

(provide 'ana-lsp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lsp.el ends here
