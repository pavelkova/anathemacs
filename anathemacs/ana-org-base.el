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
   ;; (eshell     . t)
   (gnuplot    . t)
   (haskell    . t)
   (js         . t)
   (latex      . t)
   (lisp       . t)
   (lua        . t)
   (makefile   . nil)
   (matlab     . t)
   (octave     . t)
   (python     . t)
   (R          . t)
   (ruby       . t)
   (sass       . t)
   ;; (sh         . t)
   (shell      . t)
   (sql        . t)
   (table      . t)
   (translate  . nil)
   ))

;; modules
(customize-set-variable 'org-modules
                        '(org-bibtex
                          ;; org-crypt
                          org-ctags
                          org-docview
                          org-element
                          org-habit
                          org-id
                          org-info
                          org-inlinetask
                          ;; org-tempo
                          ;; org-annotate-file
                          ;; org-bookmark
                          ;; org-checklist
                          ;; org-choose
                          ;; org-collector
                          ;; org-depend
                          ;; org-notmuch
                          ;; org-panel
                          ;; org-registry
                          ;; org-toc
                          ;; org-wikinodes
                          ))

;; load
(with-eval-after-load 'org
  (setq org-clock-idle-time 5
        spaceline-org-clock-p t))

;; (setq org-wikinodes-scope 'directory
;;       abbrev-file-name (concat user-dir "abbrev_defs"))


(use-package ivy-omni-org
  :general
  (hs-leader-def
    "i" 'ivy-omni-org)
  :config
  (setq ivy-omni-org-file-sources '(org-agenda-files)))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
