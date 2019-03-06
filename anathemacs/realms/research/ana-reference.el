;;; ana-reference.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package biblio
  :config
  (hs-leader-def
    "rl" 'biblio-lookup))

(use-package ebib
  :config
  (hs-leader-def
    "re" 'ebib))

(use-package org-ref
  :defer t
  :config
  (setq org-ref-bibliography-notes 'user-bib-notes-file
        org-ref-default-bibliography 'user-default-bib-file
        org-ref-pdf-directory 'user-pdf-dir
        reftex-bibliography-commands '("bibliography" "nobibliography""addbibresource")
        reftex-default-bibliography 'user-default-bib-file
        reftex-plug-into-AUCTeX t
        org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f")))

(provide 'ana-reference)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reference.el ends here
