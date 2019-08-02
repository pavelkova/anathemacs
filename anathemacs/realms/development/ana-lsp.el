;;; ana-lsp.el --- Package configurations for working with Lisp.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;; Replace individual language support with LSP.
;;

;;; Code:
(use-package company-lsp)

(use-package dap-mode
  :after lsp-mode
  :init
  (dap-mode 1)
  (dap-ui-mode 1)
  (require 'dap-python))

(use-package lsp-mode
  :commands lsp
  :config
  (setq lsp-prefer-flymake nil
        lsp-enable-indentation t)
  :hook
  ((elixir-mode go-mode haskell-mode java-mode js-mode python-mode rjsx-mode ruby-mode web-mode) . lsp)
  )

(use-package lsp-ui
  :after lsp-mode)

;; language-specific

(use-package lsp-haskell
  :after lsp-mode)

(use-package lsp-java
  :after lsp-mode)

(provide 'ana-lsp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lsp.el ends here
