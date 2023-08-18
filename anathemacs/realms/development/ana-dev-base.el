;;; ana-dev-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;; Code:

(use-package exercism)

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

(use-package zeal-at-point
  :general
  (hd-leader-def
    "z" 'zeal-at-point))

(provide 'ana-dev-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-dev-base.el ends here
