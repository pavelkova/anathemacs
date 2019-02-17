;;; ana-org-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; babel - language support
(setq org-confirm-babel-evaluate nil
      org-src-fontify-natively t
      org-src-tab-acts-natively t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((C          . nil)
   (calc       . t)
   (emacs-lisp . t)
   (gnuplot    . t)
   (haskell    . t)
   (js         . t)
   (latex      . t)
   (lisp       . t)
   (makefile   . nil)
   (matlab     . t)
   (python     . t)
   (R          . t)
   (restclient . nil)
   (ruby       . t)
   (sagemath   . nil)
   (sass       . t)
   (sh         . nil)
   (shell      . t)
   (sql        . t)
   (translate  . nil)
   ))

(use-package calfw-org
  :after calfw
  :config
  ;; (load-file (concat user-secrets-dir "caldav.el"))
  (setq ;; org-caldav-inbox (concat user-org-dir "calendario.org")
        org-icalendar-timezone "North_America/New_York)"))

(use-package gnuplot
  :defer t
  :config
  (hx-leader-def
   :keymaps 'org-mode
   "tp" 'org-plot/gnuploot))

(use-package htmlize
  :defer t)

(use-package org)

(use-package org-download)

(use-package org-mime)

(use-package org-noter
  :after org
  :config
  (org-noter-set-auto-save-last-location t)
  )

(use-package org-pomodoro)

(use-package org-present)

(use-package org-projectile)

(use-package ox-twbs)

;; (use-package ox-gfm :location recipe :fetcher github :repo "syl20bnr/ox-gfm")



;; load
(with-eval-after-load 'org
  (setq org-startup-indented t
        org-clock-idle-time 5
        org-bullets-bullet-list '("⋅")
        org-ellipsis "..."
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline t
        org-fontify-quote-and-verse-blocks t
        spaceline-org-clock-p t
        abbrev-file-name "~/.emacs.d/private/gigi/abbrev_defs")

  (customize-set-variable 'org-modules
                          '(org-bookmark
                            org-checklist
                            org-choose
                            org-collector
                            org-docview
                            org-habit
                            org-info
                            org-inlinetask
                            org-toc)))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
