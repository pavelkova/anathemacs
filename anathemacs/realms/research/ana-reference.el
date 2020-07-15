;;; ana-reference.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; BIBLIOGRAPHY
(use-package biblio
  :general
  (hr-leader-def
    "bl" 'biblio-lookup))

(use-package ebib
  :general
  (hr-leader-def
    "be" 'ebib))

(use-package helm-bibtex)

(use-package org-roam-bibtex
  :after org-roam
  :hook (org-roam-mode . org-roam-bibtex-mode)
  :bind (:map org-mode-map
              (("C-c n a" . orb-note-actions))))

(use-package org-ref
  :config
  (setq org-ref-bibliography-notes 'user-bib-notes-file
        org-ref-default-bibliography 'user-default-bib-file
        org-ref-pdf-directory 'user-pdf-dir))

(setq org-latex-pdf-process (list "latexmk -shell-escape -bibtex -f -pdf %f")
      reftex-bibliography-commands '("bibliography" "nobibliography" "addbibresource")
      reftex-default-bibliography 'user-default-bib-file
      reftex-plug-into-AUCTeX t)

;; FULL TEXT SEARCH
(use-package helm-recoll
  :general
  (hs-leader-def
    "rr" 'helm-recoll)
  :init
  (setq helm-recoll-directories
        '(("biblioteca" . "~/.recoll"))))

;; WIKIPEDIA LOOKUP
(use-package wiki-summary
  :general
  (hr-leader-def
    "?" 'wiki-summary))

;; ZOTERO
(use-package zotxt
  :general
  (hr-leader-def
    "z"  '(:ignore t :which-key "zotxt")
    "z." 'org-zotxt-mode
    "zi" 'org-zotxt-insert-reference-link
    "zo" 'org-zotxt-open-attachment
    "zu" 'org-zotxt-update-reference-link-at-point
    "zn" 'org-zotxt-noter))

(provide 'ana-reference)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reference.el ends here
