;;; ana-organizing.el --- Tools for org agenda and tasks

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:


(use-package org-bookmark-heading)

(use-package toc-org
  :hook (org-mode . toc-org-mode))

(use-package org-ql)

(use-package helm-org
  :after org-ql
  :general
  (hs-leader-def
    "?" 'helm-org-ql))

(use-package helm-org-rifle
  :general
  (hs-leader-def
    ":" 'helm-org-rifle)
  :config
  (setq helm-org-rifle-fontify-headings nil))

(use-package deft
  :general
  (hs-leader-def
    "d" 'deft)
  :config
  (setq deft-directory org-directory
        deft-recursive t))

;; ROAM
(use-package org-roam
  :init
  (org-roam-mode)
  (setq org-roam-directory org-directory ; user-org-roam-directory
        org-roam-dailies-directory "diario/"
        org-roam-index-file user-org-roam-index-file
        org-roam-db-location (concat org-directory "org-roam.db"))
  :general
  (hr-leader-def
    "<right>" 'org-roam
    "f"       'org-roam-find-file
    "g"       'org-roam-graph-show
    "i"       'org-roam-insert
    "I"       'org-roam-insert-immediate))

(use-package company-org-roam
  :config
  (push 'company-org-roam company-backends))

;; (use-package org-roam-server
;;   :after org-roam
;;   :init
;;   (setq org-roam-server-host "127.0.0.1"
;;         org-roam-server-port 9091
;;         org-roam-server-export-inline-images t
;;         org-roam-server-authenticate nil
;;         org-roam-server-network-poll t
;;         org-roam-server-network-arrows nil
;;         org-roam-server-network-label-truncate t
;;         org-roam-server-network-label-truncate-length 60
;;         org-roam-server-network-label-wrap-length 20)
;;   (org-roam-server-mode))

(use-package md-roam
  :load-path "anathemacs/lib/md-roam"
  :config
  (setq md-roam-file-extension-single "md"
        org-roam-file-extensions '("org" "md")
        org-roam-title-sources '((mdtitle title mdheadline headline) (mdalias alias))))

(use-package neuron-mode
  :config
  (setq neuron-default-zettelkasten-directory "~/org/neuron"))

(provide 'ana-organizing)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-organizing.el ends here
