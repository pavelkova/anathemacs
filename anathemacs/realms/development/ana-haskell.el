;;; ana-haskell.el --- Package configurations for working with Haskell.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-cabal
  :hook (haskell-cabal-mode . (set-local-company-backend company-cabal)))

(use-package haskell-mode
  :mode "\\.hs\\'")

(use-package dante
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-hook 'haskell-mode-hook 'dante-mode))


(use-package lsp-haskell
  :hook (haskell-mode)
  :config
  (setq lsp-haskell-process-path-hie "haskell-language-server-wrapper"))

(provide 'ana-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-haskell.el ends here
