;;; ana-annotation.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package org-noter
  :general
  (hr-leader-def
    "rn" 'org-noter)
  :config
  (setq org-noter-auto-save-last-location t
        org-noter-insert-selected-text-inside-note t
        org-noter-insert-note-no-questions t
        org-noter-kill-frame-at-session-end t
        ;; org-noter-notes-search-path '(user-noter-notes-dir))
        org-noter-notes-search-path '("~/Media/org/proyectos/lectura/notas/")))

(use-package org-pdftools
  :load-path "anathemacs/lib/org-pdftools"
  :config (setq org-pdftools-root-dir user-pdf-dir)
  (with-eval-after-load 'org
    (org-link-set-parameters "pdftools"
                             :follow #'org-pdftools-open
                             :complete #'org-pdftools-complete-link
                             :store #'org-pdftools-store-link
                             :export #'org-pdftools-export)
    (add-hook 'org-store-link-functions 'org-pdftools-store-link)))

(use-package org-noter-pdftools
  :after (org-noter)
  :load-path "anathemacs/lib/org-pdftools")

(provide 'ana-annotation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-annotation.el ends here
