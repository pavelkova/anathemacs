;;; ana-reference.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package biblio
  :defer t)

(use-package ebib
  :defer t)

(use-package org-ref
  :defer t
  :config
  (setq reftex-default-bibliography 'user-default-bib-file
        org-ref-bibliography-notes 'user-bib-notes-file
        org-ref-default-bibliography 'user-default-bib-file
        org-ref-pdf-directory 'user-pdf-dir
        org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f")))


(provide 'ana-reference)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reference.el ends here
