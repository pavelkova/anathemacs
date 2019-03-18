;;; ana-math.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(setq TeX-auto-save t
      TeX-parse-self t
      TeX-pdf-mode t
      TeX-save-query nil)

(use-package auctex-latexmk
  :hook ('TeX-mode . (lambda () (setq TeX-command-default "LatexMk")))
  :init
  (with-eval-after-load 'tex
    (auctex-latexmk-setup))
  (setq auctex-latexmk-inherit-TeX-PDF-mode t))

(use-package cdlatex
  :hook ((LaTeX-mode latex-mode) . turn-on-cdlatex))

(use-package company-math
  :hook (TeX-mode . (set-local-company-backend (company-math-symbols-latex company-latex-commands))))

(use-package latex-pretty-symbols
  :hook TeX-mode)

(use-package magic-latex-buffer
  :hook TeX-mode)

(use-package wolfram-mode
  :defer t)

;; LaTeX in org-mode
(setq org-format-latex-options
      (plist-put org-format-latex-options :scale 2.0))

(defun auto-preview-latex ()
  (when (looking-back (rx "$ "))
    (save-excursion
      (backward-char 1)
      (org-toggle-latex-fragment))))

(add-hook 'org-mode-hook
          (lambda ()
            (org-cdlatex-mode)
            (add-hook 'post-self-insert-hook #'auto-preview-latex 'append 'local)))

(provide 'ana-math)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-math.el ends here
