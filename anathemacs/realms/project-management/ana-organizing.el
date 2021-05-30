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

;; ROAM
;; (use-package md-roam
;;   ;; :load-path "anathemacs/lib/md-roam"
;;   :quelpa (md-roam :fetcher gitlab :repo "nobiot/md-roam")
;;   :config
;;   (setq md-roam-file-extension-single "md"
;;         org-roam-title-sources '((mdtitle title mdheadline headline) (mdalias alias))))

(use-package org-roam
  ;; :after (org md-roam)
  :after org
  :load-path "anathemacs/lib/org-roam"
  ;; :quelpa (org-roam :fetcher github :repo "org-roam/org-roam/tree/v2")
  :commands
  (org-roam-buffer
   org-roam-setup
   org-roam-capture
   org-roam-node-find)
  :general
  (hs-leader-def
    "<SPC>"   'org-roam-dailies-capture-today
    "C-<SPC>" 'org-roam-dailies-capture-date
    "c"       'org-roam-capture)
  (hr-leader-def
    "<right>" 'org-roam-buffer-toggle
    "f"       'org-roam-node-find
    "F"       'org-roam-find-file
    "g"       'org-roam-show-graph
    "i"       'org-roam-node-insert
    "I"       'org-roam-insert-immediate)
  :init
  (setq org-roam-directory org-directory
        org-id-link-to-org-use-id t
        org-roam-node-display-template "${title:80} ${file:9}  ${tags:20}")
  :config
  (setq org-roam-completion-everywhere t
        org-roam-dailies-directory "Diario/"
        org-roam-enable-headline-linking t
        org-roam-file-extensions '("org" "md")
        org-roam-index-file "codex.org"
        org-roam-tag-separator " > "
        org-roam-tag-sources '(prop vanilla last-directory md-frontmatter))
  (setq org-roam-capture-templates
        '(("d" "default" plain
           "%?
:PROPERTIES:
:CREATED: %U
:END:"
           :if-new (file+head "Fugaz/%<%Y%m%d%H%M%S>-${slug}.org"
                              "+#TITLE: ${title}\n")
           :unnarrowed t)))
  (setq org-roam-dailies-capture-templates
        '(;;---DAILY NOTE - FLEETING SUBHEADER
          ("n" "[F] diario/{date} - [H] Fugaz" entry
           "** %?
:PROPERTIES:
:CREATED: %U
:END:"
           :if-new (file+head+olp "%(concat org-roam-dailies-directory \"/%<%Y-%m-%d>.org\")"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Fugaz"))
           :unnarrowed t)
          ;;---DAILY NOTE - JOURNAL SUBHEADER
          ("d" "[F] diario/{date} - [H] Diario" entry
           "** %<%H:%M> :diario:
:PROPERTIES:
:CREATED: %U
:END:
%?"
           :if-new (file+head+olp "%(concat org-roam-dailies-directory \"/%<%Y-%m-%d>.org\")"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Diario"))
           :unnarrowed t)
          ;;---DAILY NOTE - TASK SUBHEADER
          ("t" "[F] tareas/{date} - [H] Tarea" entry
           "** TODO %?
SCHEDULED: %t
:PROPERTIES:
:CREATED: %U
:END:"
           :if-new (file+head+olp "%(concat org-roam-dailies-directory \"/%<%Y-%m-%d>.org\")"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Tareas"))
           :unnarrowed t)
          ;;---DAILY NOTE - PROJECT TASK SUBHEADER
          ("p" "[F] diario/{date} - [H] Tarea de proyecto" entry
           "** TODO %? :proyecto:%^{nombre de proyecto}
SCHEDULED: %t
From file: [[file:%F]]
Project: [[roam:%\\1]]
:PROPERTIES:
:CREATED: %U
:END:"
           :if-new (file+head+olp "%(concat org-roam-dailies-directory \"/%<%Y-%m-%d>.org\")"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Tareas"))
           :unnarrowed t)))
  (org-roam-setup))


(use-package org-transclusion
  :load-path "anathemacs/lib/org-transclusion"
  ;; :quelpa (org-transclusion :fetcher gitlab :repo "nobiot/org-transclusion")
  :general
  (hr-leader-def
    "t" 'org-transclusion-mode))

;; (use-package vulpea
;;   :init
;;   (vulpea-setup))

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
