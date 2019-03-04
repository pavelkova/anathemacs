;;; ana-math.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package auctex-latexmk
  :hook ('TeX-mode . (lambda () (setq TeX-command-default "LatexMk")))
  :init
  (with-eval-after-load 'tex
    (auctex-latexmk-setup))
  (setq auctex-latexmk-inherit-TeX-PDF-mode t))

(use-package cdlatex
  :hook ((LaTeX-mode latex-mode) . turn-on-cdlatex))

;; (use-package company-auctex)

(use-package company-math
  :hook ((TeX-mode) . (set-local-company-backend company-math)))

(use-package latex-pretty-symbols)

(use-package magic-latex-buffer
  :hook TeX-mode)

(use-package wolfram-mode
  :defer t)

(setq TeX-parse-self t
      TeX-save-query nil)
(provide 'ana-math)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-math.el ends here
