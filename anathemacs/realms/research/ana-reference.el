;;; ana-reference.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package biblio
  :general
  (hs-leader-def
    "rl" 'biblio-lookup))

(use-package ebib
  :general
  (hs-leader-def
    "re" 'ebib))

(use-package org-ref
  :defer t
  :config
  (setq org-ref-bibliography-notes 'user-bib-notes-file
        org-ref-default-bibliography 'user-default-bib-file
        org-ref-pdf-directory 'user-pdf-dir))

(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f")
      reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource")
      reftex-default-bibliography 'user-default-bib-file
      reftex-plug-into-AUCTeX t)

(use-package zotxt
  :general
  (hs-leader-def
    "rz"  '(:ignore t :which-key "zotxt")
    "rz." 'org-zotxt-mode
    "rzi" 'org-zotxt-insert-reference-link
    "rzo" 'org-zotxt-open-attachment
    "rzu" 'org-zotxt-update-reference-link-at-point
    "rzn" 'org-zotxt-noter))

(provide 'ana-reference)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reference.el ends here
