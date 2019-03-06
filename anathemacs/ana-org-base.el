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

;; load
(with-eval-after-load 'org
  (setq  org-clock-idle-time 5
        spaceline-org-clock-p t
        abbrev-file-name (concat user-dir "abbrev_defs"))

  (customize-set-variable 'org-modules
                          '(org-bibtex
                            org-bookmark
                            org-checklist
                            ;; org-choose
                            org-collector
                            org-crypt
                            org-ctags
                            org-depend
                            org-docview
                            org-element
                            org-habit
                            org-id
                            org-info
                            org-inlinetask
                            org-mouse
                            org-notmuch
                            org-panel
                            org-registry
                            org-toc
                            org-wikinodes
                            ))

  (setq org-wikinodes-scope 'directory))

(use-package ivy-omni-org
 
  :config
  (setq ivy-omni-org-file-sources '(org-agenda-files))
  (hs-leader-def
   "i" 'ivy-omni-org))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
