;;; ana-writing.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package org-journal
  :general
  (hs-leader-def
    "wj" 'org-journal-new-entry)
  :config
  (setq org-journal-dir user-journal-dir
        org-journal-find-file 'find-file
        org-journal-file-type 'yearly
        org-journal-enable-agenda-integration t
        org-journal-date-format "%d %B %Y [%A]"
        org-journal-file-format "%Y.org")
  (global-unset-key (kbd "C-c C-j")))

(use-package wc-mode
  :delight wc-mode
  :mode ("\\[0-9]+.org\\'"
         "\\.blank-page.org\\'")
  :general
  (hs-leader-def
    "wc" 'wc-mode
    "wC" 'wc-set-word-goal)
  :config
  (setq wc-modeline-format "written %tw of %gw words"
        wc-word-goal 750))

(use-package writegood-mode
  :general
  (hs-leader-def
    "wg" 'writegood-grade-level
    "we" 'writegood-reading-ease))

(use-package writeroom-mode
  ;; :mode ("\\[0-9]+.org\\'"
  ;;        "\\.blank-page.org\\'")
  :general
  (hs-leader-def
    "wf" 'writeroom-mode)
  :config
  (setq writeroom-extra-line-spacing 1.0
        writeroom-global-effects
        '(writeroom-set-fullscreen
          writeroom-set-menu-bar-lines
          writeroom-set-tool-bar-lines
          writeroom-set-vertical-scroll-bars
          writeroom-set-bottom-divider-width)
        writeroom-mode-line '("   " mode-line-modified "   " word-count-modeline)))

(provide 'ana-writing)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-writing.el ends here


