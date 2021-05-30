;;; ana-docs.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;; Code:
(use-package fence-edit
  :load-path "anathemacs/lib/fence-edit"
  :hook (web-mode . fence-edit.mode)
  :general
  (ha-leader-def
    "." 'fence-edit-code-at-point
    ">" 'fence-edit-code-region-with-mode))

(use-package mmm-mode
  :config
  ((mmm-add-classes
    '((web-graphql
       :submode graphql-mode
       :face mmm-declaration-submode-face
       :front "[^a-zA-Z]gql`"
       :back "`")
      (web-sql
          :submode sql-mode
          :face mmm-declaration-submode-face
          :front "[^a-zA-Z]sql`" ;; regex to find the opening tag
          :back "`")))
   (mmm-add-mode-ext-class 'web-mode nil 'web-graphql)
   (mmm-add-mode-ext-class nil "\\.[jt]sx?\\'" 'web-graphql)
   (mmm-add-mode-ext-class 'web-mode nil 'web-sql)
   (mmm-add-mode-ext-class nil "\\.[jt]sx?\\'" 'web-sql)
   (setq mmm-global-mode 'maybe
         mmm-submode-decoration-level 0)))

(use-package dash-docs
  :config
  (setq dash-docs-common-docsets '(;; "Bootstrap 4"
                                   ;; "C++"
                                   ;; "CSS"
                                   ;; "Django"
                                   ;; "Elixir"
                                   ;; "Emacs Lisp"
                                   ;; "Erlang"
                                   ;; "Flask"
                                   "Font_Awesome"
                                   ;; "Go"
                                   ;; "Haskell"
                                   ;; "HTML"
                                   ;; "JavaScript"
                                   ;; "jQuery"
                                   "LaTeX"
                                   ;; "Lua"
                                   ;; "MATLAB"
                                   ;; "Matplotlib"
                                   "MySQL"
                                   ;; "Nginx"
                                   ;; "NodeJS"
                                   ;; "NumPy"
                                   ;; "Pandas"
                                   "PostgreSQL"
                                   "Python 3"
                                   "R"
                                   ;; "React"
                                   ;; "Ruby"
                                   ;; "Ruby on Rails"
                                   ;; "SciPy"
                                   ;; "SQLAlchemy"
                                   "SQLite"
                                   ;; "TypeScript"
                                   ;; "VueJS"
                                   )))


(use-package helm-dash
  :after dash-docs
  :general
  (hd-leader-def
    "-" 'helm-dash
    "_" 'helm-dash-at-point)
  :config
  (setq helm-dash-common-docsets dash-docs-common-docsets))
(provide 'ana-docs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-docs.el ends here
