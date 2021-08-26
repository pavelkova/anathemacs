;;; ana-organizing.el --- Tools for org agenda and tasks

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:


;; ROAM
(use-package md-roam
  :load-path "anathemacs/lib/md-roam"
  ;; :quelpa (md-roam :fetcher gitlab :repo "nobiot/md-roam")
  :config
  (setq md-roam-file-extension-single "md"
        org-roam-title-sources '((mdtitle title mdheadline headline) (mdalias alias))))

(use-package org-roam
  ;; :after (org md-roam)
  :after org
  :commands
  (org-roam-buffer
   org-roam-setup
   org-roam-capture
   org-roam-node-find)
  :custom
  (org-roam-directory (file-truename org-directory)
   org-id-link-to-org-use-id t
   org-roam-node-display-template "${title:80} ${file:9}  ${tags:20}"
   org-roam-completion-everywhere t
   org-roam-dailies-directory "Diario/"
   org-roam-enable-headline-linking t
   org-roam-file-extensions '("org" "md")
   org-roam-index-file "codex.org"
   org-roam-tag-separator " > "
   org-roam-tag-sources '(prop vanilla last-directory md-frontmatter)
   org-roam-v2-ack t)
  :general
  (:keymaps 'org-mode-map
            "C-c i" 'org-roam-node-insert
            "C-c c" 'org-roam-capture
            "C-c f" 'org-roam-node-find
            "C-c r" 'org-roam-buffer-toggle
            )
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
    "I"       'org-roam-insert-immediate
    "r"       'org-roam-refile
    "C-a"     'org-roam-alias-add
    "C-t"     'org-roam-tag-add
    "C-r"     'org-roam-ref-add)
  :config
  (org-roam-db-autosync-mode)
  (setq org-roam-mode-section-functions
      (list #'org-roam-backlinks-section
            #'org-roam-reflinks-section
            ;; #'org-roam-unlinked-references-section
            ))
  (add-to-list 'display-buffer-alist
             '("\\*org-roam\\*"
               (display-buffer-in-direction)
               (direction . right)
               (window-width . 0.33)
               (window-height . fit-window-to-buffer)))
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
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Fugaz"))
           :unnarrowed t)
          ;;---DAILY NOTE - FLEETING SUBHEADER - AUDIO
          ("a" "[F] diario/{date} - [H] Fugaz (AUDIO)" entry
           "** transcribed audio
:PROPERTIES:
:CREATED: %U
:END:
%?"
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Fugaz"))
           :unnarrowed t)

          ;;---DAILY NOTE - LINK SUBHEADER
          ("r" "[F] diario/{date} - [H] Enlaces (REDDIT)" entry
           "** [REDDIT] %? :reddit:
:PROPERTIES:
:CREATED: %U
:URL:
:END:
"
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Enlaces"))
           :unnarrowed t)
          ;;---DAILY NOTE - JOURNAL SUBHEADER
          ("d" "[F] diario/{date} - [H] Diario" entry
           "** %<%H:%M> :diario:
:PROPERTIES:
:CREATED: %U
:END:
%?"
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
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
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
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
           :if-new (file+head+olp "%<%Y-%m-%d>.org"
                                  "#+title: %<%Y-%m-%d>\n"
                                  ("Tareas"))
           :unnarrowed t)
        ("b" "Add book to reading list manually" entry
         "** TOREAD %^{TITLE}
:PROPERTIES:
:CREATED: %U
:AUTHOR: %^{AUTHOR}p
:FILE:
:NOTES:
:GOODREADS:
:END:\n%?"
         :if-new (file+head+olp user-reading-list-file
                                "#+title: Lista de lectura"
                                ("Libros"))
         :empty-lines 1)
        ("B" "Add log note to book on reading list" item (function org-books-visit-book-log)
           "- %U %?" :prepend t)))
  (org-roam-setup))

(use-package org-roam-ui
  :after org-roam
  :load-path "anathemacs/lib/org-roam-ui"
  ;; :mode ("\\.org\\'" . org-roam-ui-mode)
  :general
  (hr-leader-def
    "u" 'org-roam-ui-mode)
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(use-package org-transclusion
  :load-path "anathemacs/lib/org-transclusion"
  ;; :quelpa (org-transclusion :fetcher gitlab :repo "nobiot/org-transclusion")
  ;; :mode ("\\.org\\'" . org-transclusion-mode)
  ;; :bind-keymap
  ;; ("H-r t" . org-transclusion-map)
  :general
  (hr-leader-def
    "t"      '(:ignore t :which-key "transclusion")
    "t D"    'org-transclusion-demote-subtree
    "t O"    'org-transclusion-move-to-source
    "t P"    'org-transclusion-promote-subtree
    "t d"    'org-transclusion-remove
    "t e"    'org-transclusion-live-sync-start
    "t g"    'org-transclusion-refresh
    "t o"    'org-transclusion-open-source
    "t l"    'org-transclusion-make-from-link
    "t a"    'org-transclusion-add
    "t A"    'org-transclusion-add-all))

;; (use-package vulpea
;;   :init
;;   (vulpea-setup))

;; BRAIN
(use-package org-brain :ensure t
  :init
  (setq org-brain-path org-directory)
  :general
  (hs-leader-def
    "B"  'org-roam-brain-visualize)
  :hook
  ((org-brain-visualize-mode . org-brain-polymode))
  :config
  (bind-key "C-c b" 'org-brain-prefix-map org-mode-map)
  (setq org-id-track-globally t
        org-id-locations-file "~/.config/emacs/.org-id-locations"
        org-brain-visualize-default-choices 'all
        org-brain-title-max-length 24
        org-brain-include-file-entries t
        org-brain-file-entries-use-title t)
  ;; (add-hook 'before-save-hook #'org-brain-ensure-ids-in-buffer)
  (push '("b" "Brain" plain (function org-brain-goto-end)
          "* %i%?" :empty-lines 1)
        org-capture-templates))

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
