;;; ana-exporting.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; convert buffer text and decorations to html
;; (use-package htmlize :defer t)

;; send emails with html
;; (use-package org-mime :defer t)

;; export org file as html with bootstrap support
;; (use-package ox-twbs :defer t)

(use-package ox-pandoc)

(use-package pandoc-mode
  :demand t)

(provide 'ana-exporting)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-exporting.el ends here
