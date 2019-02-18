;;; ana-haskell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package cmm-mode)
(use-package company-cabal)
(use-package company-ghci)
(use-package company-ghc)
(use-package flycheck-haskell)
(use-package ggtags)
(use-package ghc)
;; (use-package haskell-emacs) ;; TODO - use haskell to write emacs extensions
(use-package haskell-mode)
(use-package haskell-snippets)
(use-package hindent)
(use-package hlint-refactor)
(use-package intero)

(provide 'ana-haskell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-haskell.el ends here
