;;; ana-haskell.el --- Package configurations for working with Haskell.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-cabal
  :hook (haskell-cabal-mode . (set-local-company-backend company-cabal)))

;; (use-package flycheck-haskell
;;   :hook (flycheck-haskell-setup . haskell-mode-hook))

(use-package haskell-mode
  :mode "\\.hs\\'")

(use-package hindent
  :hook haskell-mode)

(use-package intero
  :hook haskell-mode)

(provide 'ana-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-haskell.el ends here
