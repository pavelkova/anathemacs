;;; ana-math.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package auctex-latexmk
  :defer t)

(use-package cdlatex
  :defer t)

(use-package company-math
  :defer t)

;; (use-package latex)

(use-package math-symbol-lists
  :defer t)

;; (use-package matlab-mode)

(use-package wolfram-mode
  :defer t)

(provide 'ana-math)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-math.el ends here
