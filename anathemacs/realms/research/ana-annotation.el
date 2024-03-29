;;; ana-annotation.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; (use-package org-noter
;;   :general
;;   (hr-leader-def
;;     "n" 'org-noter)
;;   :config
;;   (setq org-noter-auto-save-last-location t
;;         org-noter-insert-selected-text-inside-note t
;;         org-noter-insert-note-no-questions t
;;         org-noter-kill-frame-at-session-end t
;;         org-noter-notes-search-path '("~/Org/Paginas/Lectura/"))
;;   (require 'org-noter-pdftools))

(use-package org-pdftools
  :hook (org-load . org-pdftools-setup-link))

;; (use-package org-noter-pdftools
;;   :after org-noter
;;   :config
;;   ;; Add a function to ensure precise note is inserted
;;   (defun org-noter-pdftools-insert-precise-note (&optional toggle-no-questions)
;;     (interactive "P")
;;     (org-noter--with-valid-session
;;      (let ((org-noter-insert-note-no-questions (if toggle-no-questions
;;                                                    (not org-noter-insert-note-no-questions)
;;                                                  org-noter-insert-note-no-questions))
;;            (org-pdftools-use-isearch-link t)
;;            (org-pdftools-use-freestyle-annot t))
;;        (org-noter-insert-note (org-noter--get-precise-info)))))

;;   ;; fix https://github.com/weirdNox/org-noter/pull/93/commits/f8349ae7575e599f375de1be6be2d0d5de4e6cbf
;;   (defun org-noter-set-start-location (&optional arg)
;;     "When opening a session with this document, go to the current location.
;; With a prefix ARG, remove start location."
;;     (interactive "P")
;;     (org-noter--with-valid-session
;;      (let ((inhibit-read-only t)
;;            (ast (org-noter--parse-root))
;;            (location (org-noter--doc-approx-location (when (called-interactively-p 'any) 'interactive))))
;;        (with-current-buffer (org-noter--session-notes-buffer session)
;;          (org-with-wide-buffer
;;           (goto-char (org-element-property :begin ast))
;;           (if arg
;;               (org-entry-delete nil org-noter-property-note-location)
;;             (org-entry-put nil org-noter-property-note-location
;;                            (org-noter--pretty-print-location location))))))))
;;   (with-eval-after-load 'pdf-annot
;;     (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))

;; (use-package org-noter
;;   :general
;;   (hr-leader-def
;;     "n" 'org-noter)
;;   :config
;;   (setq org-noter-auto-save-last-location t
;;         org-noter-insert-selected-text-inside-note t
;;         org-noter-insert-note-no-questions t
;;         org-noter-kill-frame-at-session-end t
;;         org-noter-notes-search-path '("~/Sync/Org/Paginas/Lectura/")))

;; (use-package org-pdftools
;;   :hook (org-load . org-pdftools-setup-link))

;; (use-package org-noter-pdftools
;;   :after org-noter
;;   :config
;;   (with-eval-after-load 'pdf-annot
;;     (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))


(provide 'ana-annotation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-annotation.el ends here
