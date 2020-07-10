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
  (hr-leader-def
    "w7" 'mpages))

(use-package org-journal
  :general
  (hr-leader-def
    "wj" 'org-journal-new-entry)
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-find-file 'find-file
        org-journal-file-type 'yearly
        org-journal-enable-agenda-integration t
        org-journal-date-prefix "*** "
        org-journal-date-format "%Y-%b-%d"
        org-journal-time-format "%H:%M"
        org-journal-time-prefix "**** "
        org-journal-file-format "%Y.org"))
;; Remove default keybindings
(global-unset-key (kbd "C-c C-j"))

(use-package org-journal-list
  :general
  (hs-leader-def
    "wJ" 'org-journal-list)
  :config
  (setq org-journal-default-directory user-journal-dir))

(use-package wc-mode
  :hook (fountain-mode mpages org-journal writeroom-mode)
  :general
  (hr-leader-def
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
  (hr-leader-def
    "w!" 'writeroom-mode))

(use-package writegood-mode
  :general
  (hr-leader-def
    "wg" 'writegood-grade-level
    "we" 'writegood-reading-ease))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


