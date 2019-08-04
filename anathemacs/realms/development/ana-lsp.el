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
    "l"  '(:ignore t :which-key "LSP")
    "le" 'lsp-treemacs-errors-list
    "lf" 'lsp-format-buffer
    "ls" 'lsp-treemacs-symbols)
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
