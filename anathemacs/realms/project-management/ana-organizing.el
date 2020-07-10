;;; ana-organizing.el --- Tools for org agenda and tasks

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; BRAIN - mindmapping with org trees
(use-package org-brain
 :general
 (hs-leader-def
   "C-b"  'org-brain-agenda)
 :config
 (setq org-brain-path user-brain-dir
       org-id-track-globally t
       org-id-locations-file (concat user-dir ".org-id-locations")
       org-brain-visualize-default-choices 'all
       org-brain-title-max-length 12))


(use-package org-ql)

(use-package org-roam
  :init
  (org-roam-mode)
  :general
  (hr-leader-def
    "H-r" 'org-roam
    "rf"  'org-roam-find-file
    "rg"  'org-roam-graph-show
    "ri"  'org-roam-insert
    "rI"  'org-roam-insert-immediate)
  :config
  (setq org-roam-directory org-roam-dir
        org-roam-db-location (concat org-roam-dir "org-roam.db")))

(use-package org-roam-bibtex
  :after org-roam
  :hook (org-roam-mode . org-roam-bibtex-mode)
  :bind (:map org-mode-map
         (("C-c n a" . orb-note-actions))))

(use-package company-org-roam
  :config
  (push 'company-org-roam company-backends))

(use-package org-roam-server
  :after org-roam
  :init
  (setq org-roam-server-host "127.0.0.1"
        org-roam-server-port 9091
        org-roam-server-export-inline-images t
        org-roam-server-authenticate nil
        org-roam-server-network-poll t
        org-roam-server-network-arrows nil
        org-roam-server-network-label-truncate t
        org-roam-server-network-label-truncate-length 60
        org-roam-server-network-label-wrap-length 20)
  (org-roam-server-mode))

(use-package side-notes
  :general
  (hs-leader-def
    "n" 'side-notes-toggle-notes)
  :config
  (setq side-notes-file "index.org"))

(provide 'ana-organizing)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-organizing.el ends here
