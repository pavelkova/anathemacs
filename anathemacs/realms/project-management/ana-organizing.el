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

;; (use-package org-ql)

(use-package helm-org
  :after org-ql
  :general
  (hs-leader-def
    "?" 'helm-org-ql))

(use-package deft
  :after org
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
        org-roam-db-location (concat org-directory "org-roam.db")
        org-roam-enable-headline-linking t
        org-roam-file-extensions '("org" "md")
        ;; org-roam-index-file user-org-roam-index-file)
        org-roam-index-file "codex.org"
        org-roam-tag-separator " > "
        org-roam-tag-sources '(prop vanilla last-directory))
  :config
  (setq org-roam-dailies-capture-templates '(;;---DAILY NOTE - FLEETING SUBHEADER
                                             ("n" "[F] diario/{date} - [H] fugaz" entry
                                              #'org-roam-capture--get-point
                                              "** %^{text}?
:LOGBOOK:
:CREATED: %U
:END:"
                                      :file-name "diario/%<%Y-%m-%d>"
                                      :head "#+title: %<%Y-%m-%d>\n"
                                      :olp ("fugaz"))

                                             ;;---DAILY NOTE - JOURNAL SUBHEADER
                                             ("d" "[F] diario/{date} - [H] diario" entry
                                              #'org-roam-capture--get-point
                                              "** %<%H:%M> :diario:
:LOGBOOK:
:CREATED: %U
:END:
:PROPERTIES:
:CREATED: %<%Y%m%d>
:END:
%^{text}"
                                      :file-name "diario/%<%Y-%m-%d>"
                                      :head "#+title: %<%Y-%m-%d>\n"
                                      :olp ("diario"))

                                     ;;---DAILY NOTE - TASK SUBHEADER
                                     ("t" "[F] diario/{date} - [H] tarea" entry
                                      #'org-roam-capture--get-point
                                      "** TODO %^{tarea} %?
SCHEDULED: %t
:LOGBOOK:
- Created %U
:END:"
                                      :file-name "diario/%<%Y-%m-%d>"
                                      :head "#+title: %<%Y-%m-%d>\n"
                                      :olp ("tareas")))
        org-roam-capture-templates '(;;---FLEETING FILE
                                     ("f" "[F] fugaz/{date}--{time}--{slug}" entry
                                      #'org-roam-capture--capture
                                      "* %?
:LOGBOOK:
:CREATED: %U
:END:"
                                      :file-name "fugaz/%<%Y-%m-%d-%H%M%S>-${slug}"
                                      :head "#+title: ${title}\n"
                                      :unnarrowed t)))
  :general
  (hr-leader-def
    "<right>" 'org-roam
    "f"       'org-roam-find-file
    "g"       'org-roam-graph-show
    "i"       'org-roam-insert
    "I"       'org-roam-insert-immediate))

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
        org-roam-title-sources '((mdtitle title mdheadline headline) (mdalias alias))))

;; (use-package neuron-mode
;;   :config
;;   (setq neuron-default-zettelkasten-directory "~/org/neuron"))

;; LEDGER (finances)
(use-package ledger-mode
  :mode ("\\.dat\\'"
         "\\.ledger\\'")
  :custom (ledger-clear-whole-transactions t))

(use-package flycheck-ledger
  :after ledger-mode)

(provide 'ana-organizing)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-organizing.el ends here
