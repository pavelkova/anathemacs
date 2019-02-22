;;; ana-reading.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; epub reader & referencer - TODO integrate with bibtex, pdf, kindle clippings
(use-package ereader)

(use-package pdf-tools)

(provide 'ana-reading)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reading.el ends here
