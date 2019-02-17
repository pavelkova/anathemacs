;;; ana-ess.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(use-package ess)

(use-package ess-R-data-view)

(use-package ess-smart-equals
  :defer t)

(provide 'ana-ess)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ess.el ends here
