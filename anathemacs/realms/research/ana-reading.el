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

 (use-package pdf-tools
  :defer t)

;; TODO CALIBRE INTEGRATION 
;; calibre-library-dir -- search two folders down for book file, cover.jpg, and metadata.opf
;;parse metadata.opf as xml for metadata

(provide 'ana-reading)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-reading.el ends here
