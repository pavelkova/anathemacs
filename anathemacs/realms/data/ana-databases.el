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
(use-package emacsql
  :defer t)

(use-package sqlformat
  :defer t)

(use-package ob-sql-mode
  :defer t)

(use-package pg
  :defer t)

(provide 'ana-databases)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-databases.el ends here
