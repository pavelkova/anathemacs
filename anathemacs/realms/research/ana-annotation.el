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
    "n" 'org-noter)
  :config
  (setq org-noter-auto-save-last-location t
        org-noter-insert-selected-text-inside-note t
        org-noter-insert-note-no-questions t
        org-noter-kill-frame-at-session-end t
        ;; org-noter-notes-search-path '(user-noter-notes-dir))
        org-noter-notes-search-path '("~/Media/org/proyectos/lectura/notas/")))

(use-package org-pdftools
  :hook (org-load . org-pdftools-setup-link))

(use-package org-noter-pdftools
  :after org-noter
  :config
  (with-eval-after-load 'pdf-annot
    (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))

(provide 'ana-annotation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-annotation.el ends here
