;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package fountain-mode)

(use-package binder
  :load-path "anathemacs/lib/binder")

(use-package litanize
  :config (defalias 'insert-litany #'litanize-at-point))

(use-package mpages
  :general
  (hs-leader-def
    "7" 'mpages))

(use-package org-journal
  :general
  (hs-leader-def
    "j" 'org-journal-new-entry)
  :config
  (setq org-journal-dir org-directory
        org-journal-find-file 'find-file
        org-journal-file-type 'daily
        org-journal-enable-agenda-integration t
        org-agenda-enable-cache t
        org-journal-date-prefix "#+title: "
        org-journal-date-format "%Y-%m-%d"
        org-journal-time-format "%H:%M :diario:"
        ;; org-journal-time-prefix "* "
        ;; org-journal-carryover-items "TODO=\"TODO\""
        org-journal-file-format "%Y-%m-%d.org"))
;; Remove default keybindings
(global-unset-key (kbd "C-c C-j"))

(use-package org-journal-list
  :general
  (hs-leader-def
    "J" 'org-journal-list)
  :config
  (setq org-journal-default-directory org-directory))

(use-package wc-mode
  :hook (fountain-mode mpages org-journal writeroom-mode)
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

(use-package writegood-mode
  :general
  (hs-leader-def
    "wg" 'writegood-grade-level
    "we" 'writegood-reading-ease))

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
