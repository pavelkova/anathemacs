;;; ana-databases.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; CSV
(use-package csv-mode
  :mode "\\.csv\\'")

;; SQL
;; use .dir-locals.el to set (defvar db (emacsql-CONNECTION "/path/to/db"))
;; Connection types: mysql, pg, psql, sqlite
(use-package emacsql
  :defer t)

(use-package sqlformat
  :defer t)

(use-package ob-sql-mode
  :defer t)


;; table keymaps
(hs-leader-def
  :keymaps 'org-mode-map
  "t"           '(:ignore t :which-key "table")
  "t <insert>"  'org-table-import
  "t M-<left>"  'org-table-move-column-left
  "t M-<right>" 'org-table-move-column-right
  "t M-k"       'org-table-delete-column
  "t M-i"       'org-table-insert-column
  "t M-<up>"    'org-table-move-row-up
  "t M-<down>"  'org-table-move-row-down
  "t M-K"       'org-table-kill-row
  "t M-I"       'org-table-insert-row
  "t -"         'org-table-insert-hline
  "t *"         'org-table-sort-lines
  "t ."         '(:ignore t :which-key "cut/copy/paste")
  "t . M-w"     'org-table-copy-region
  "t . C-w"     'org-table-cut-region
  "t . C-y"     'org-table-paste-region
  )

(provide 'ana-databases)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-databases.el ends here
