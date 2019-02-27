;;; ana-sql.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))


(use-package emacsql
  :defer t)

(use-package sqlformat
  :defer t)

(use-package ob-sql-mode
  :defer t)

(use-package pg
  :defer t)

(provide 'ana-sql)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-sql.el ends here
