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



(use-package org-special-block-extras
  :hook (org-mode . org-special-block-extras-mode))

(use-package org-special-block-extras
  :ensure t
  :hook (org-mode . org-special-block-extras-mode)
  :custom
    (org-special-block-extras--docs-libraries
     '("~/.config/emacs/anathemacs/lib/org-special-block-extras/documentation.org")
     "The places where I keep my ‘#+documentation’")
    ;; (org-special-block-extras-fancy-links
    ;; nil "Disable this feature.")
  :config
  ;; Use short names like ‘defblock’ instead of the fully qualified name
  ;; ‘org-special-block-extras--defblock’
    (org-special-block-extras-short-names))

;; load
(with-eval-after-load 'org
  (general-define-key
   "C-M-<Return>"   'org-insert-subheading
   "C-M-<Shift>-<Return>" 'org-insert-todo-subheading)
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
                                          ;; org-notify
                                          ))
        org-confirm-babel-evaluate nil
        org-src-fontify-natively t
        org-src-tab-acts-natively t))

(provide 'ana-org-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-base.el ends here
