;;; ana-organizing.el --- Tools for org agenda and tasks

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; BRAIN - mindmapping with org trees
;;(use-package org-brain
;;  :general
;;  (hs-leader-def
;;    "C-b"  'org-brain-agenda)
;;  :config
;;  (setq org-brain-path user-brain-dir
;;        org-id-track-globally t
;;        org-id-locations-file (concat user-dir ".org-id-locations")
;;        org-brain-visualize-default-choices 'all
;;        org-brain-title-max-length 12))


(use-package org-ql)

;; (use-package org-roam
;;   :init
;;   (org-roam-mode)

;;   :general
;;   (hs-leader-def
;;     "."  '(:ignore t :which-key "org-roam")
;;     ".." 'org-roam
;;     ".f" 'org-roam-find-file
;;     ".g" 'org-roam-show-graph
;;     ".i" 'org-roam-insert))

;; (use-package org-roam-bibtex
;;   :hook (org-roam-mode . org-roam-bibtex-mode))

;; (use-package company-org-roam
;;   :config
;;   (push 'company-org-roam company-backends))

(use-package side-notes
  :general
  (hs-leader-def
    "n" 'side-notes-toggle-notes)
  :config
  (setq side-notes-file "index.org"))


(provide 'ana-organizing)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-organizing.el ends here
