;;; ana-math.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package auctex-latexmk
  :hook ('TeX-mode . (lambda () (setq TeX-command-default "LatexMk")))
  :config
  (setq auctex-latexmk-inherit-TeX-PDF-mode t
        TeX-parse-self t
        TeX-save-query nil))

(use-package cdlatex
  :hook ((LaTeX-mode latex-mode) . turn-on-cdlatex))

;; (use-package company-auctex)

(use-package company-math
  :hook ((TeX-mode) . (set-local-company-backend company-math)))

(use-package latex-pretty-symbols
  :hook TeX-mode)

(use-package magic-latex-buffer
  :hook TeX-mode)

(use-package wolfram-mode
  :defer t)

(provide 'ana-math)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-math.el ends here
