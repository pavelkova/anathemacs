;;; ana-org-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
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


;; UI changes
(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  :config
  (setq org-bullets-bullet-list '("⋅")))

(add-hook 'org-mode-hook 'variable-pitch-mode)
(diminish 'org-indent-mode)
(diminish 'buffer-face-mode)

;; load
(with-eval-after-load 'org
  (setq org-startup-indented t
        org-clock-idle-time 5
        org-ellipsis "..."
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline t
        org-fontify-quote-and-verse-blocks t
        spaceline-org-clock-p t
        abbrev-file-name (concat user-dir "abbrev_defs"))

  (customize-set-variable 'org-modules
                          '(;; org-bookmark
                            ;; org-checklist
                            ;; org-choose
                            ;; org-collector
                            org-docview
                            org-element
                            org-habit
                            org-info
                            org-inlinetask
                            ;; org-wikinodes
                            ))
  (setq org-wikinodes-scope 'directory))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
