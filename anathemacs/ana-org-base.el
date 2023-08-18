;;; ana-org-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(org-babel-do-load-languages
 'org-babel-load-languages
 '((C          . t)
   (calc       . t)
   (emacs-lisp . t)
   (eshell     . t)
   (gnuplot    . t)
   (haskell    . t)
   (js         . t)
   (latex      . t)
   (lisp       . t)
   (lua        . t)
   (makefile   . t)
   (matlab     . t)
   (octave     . t)
   (python     . t)
   (R          . t)
   (ruby       . t)
   (sass       . t)
   ;;   (sh         . t)
   (shell      . t)
   (sql        . t)
   (table      . t)
   ))

(use-package ob-cypher
  :ensure t
  :config
  (add-to-list 'org-babel-load-languages '(cypher . t))
  (org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)
  (add-to-list 'org-babel-tangle-lang-exts '("cypher" . "cypher")))

(use-package ob-graphql
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '(( graphql . t)))))

(use-package ob-http
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '(( http . t)))))

(use-package ob-typescript
  :config
  (org-babel-do-load-languages 'org-babel-load-languages
                               (append org-babel-load-languages
                                       '(( typescript . t)))))

;; load
(with-eval-after-load 'org
  (general-define-key
   "C-M-<Return>"         'org-insert-subheading
   "C-M-<Shift>-<Return>" 'org-insert-todo-subheading
   "M-<Shift>-<right>"    'org-toggle-checkbox
   "H-<SPC> c"            'org-capture)
  (setq org-open-directory-means-index-dot-org t
        org-modules (append org-modules '(;; ol-bookmark
                                          ;; ol-man
                                          ;; org-annotate-file
                                          ;; org-checklist
                                          ;; org-choose
                                          ;; org-collector
                                          org-ctags
                                          org-habit
                                          org-id
                                          org-inlinetask
                                          org-wikinodes
                                          ;; org-notify
                                          ))
        org-confirm-babel-evaluate nil
        org-src-fontify-natively t
        org-src-tab-acts-natively t))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
