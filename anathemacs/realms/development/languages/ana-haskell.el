;;; ana-haskell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package company-cabal
  :after company-mode
  (add-to-list 'company-backends 'company-cabal))

(use-package flycheck-haskell
  :hook (flycheck-haskell-setup . haskell-mode-hook))

(use-package ghc)

;; (use-package haskell-emacs) ;; TODO - use haskell to write emacs extensions

(use-package haskell-mode)

(use-package hindent
  :hook haskell-mode-hook)

(use-package intero
  :hook haskell-mode-hook)

(provide 'ana-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-haskell.el ends here
