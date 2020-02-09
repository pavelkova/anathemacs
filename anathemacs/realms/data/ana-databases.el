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
(use-package emacsql)

(use-package sqlformat)

(use-package ob-sql-mode)

(provide 'ana-databases)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-databases.el ends here
