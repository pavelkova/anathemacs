;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package fountain-mode)

(use-package binder
  :general
  (hs-leader-def
    "b"            '(:ignore t :which-key "binder")
    "b <right>"    'binder-toggle-sidebar
    "b C-<right>"  'binder-reveal-in-sidebar))

(use-package org-journal
  :general
  (hs-leader-def
    "j" 'org-journal-new-entry)
  :config
  (setq org-journal-dir user-org-roam-dailies-directory
        org-journal-find-file 'find-file
        org-journal-file-type 'daily
        org-journal-enable-agenda-integration t
        org-agenda-enable-cache t
        org-journal-date-prefix "#+title: "
        org-journal-date-format "%Y-%m-%d
* diario
:PROPERTIES:
:CREATED: %Y%m%d
:ROAM_TAGS: diario
:END:"
        org-journal-time-format "%H:%M"
        org-journal-time-prefix "** "
        ;; org-journal-carryover-items "TODO=\"TODO\""
        org-journal-file-format "%Y-%m-%d.org"))
;; Remove default keybindings
(global-unset-key (kbd "C-c C-j"))

(use-package org-novelist
  :load-path "anathemacs/lib/org-novelist"  ; The directory containing 'org-novelist.el'
  :custom
    (org-novelist-automatic-referencing-p nil))  ; Set this variable to 't' if you want Org Novelist to always keep note links up to date. This may slow down some systems when operating on complex stories. It defaults to 'nil' when not set

(use-package wc-mode
  :hook (org-mode fountain-mode mpages org-journal writeroom-mode)
  :general
  (hs-leader-def
    "w#" 'wc-mode
    "w>" 'wc-set-word-goal)
  :config
  (setq wc-modeline-format "%tw / %gw words"
        wc-word-goal 750)
  (global-unset-key (kbd "C-c C-w w"))
  (global-unset-key (kbd "C-c C-w l"))
  (global-unset-key (kbd "C-c C-w a"))
  (global-unset-key (kbd "C-c C-w c")))

(use-package writeroom-mode
  :general
  (hs-leader-def
    "w!" 'writeroom-mode))

(use-package auto-dictionary)

(use-package helm-dictionary
  :after helm)

(use-package define-word
  :general
  (hs-leader-def
    "D" 'define-word))

(use-package google-translate
  :general
  (hs-leader-def
    "T" 'google-translate-smooth-translate)
  :init
  (setq google-translate-translation-directions-alist
        '(("es" . "en") ("en" . "es") ("en" . "fr") ("fr" . "en"))))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here
