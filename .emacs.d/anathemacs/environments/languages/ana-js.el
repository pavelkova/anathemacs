;;; ana-bibtex.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; javascript
(use-package js-doc)
(use-package js2-mode)
(use-package js2-refactor)

;; json
(use-package json-mode)
(use-package json-navigator)
(use-package json-snatcher)

;; previews
(use-package skewer-mode)
(use-package web-beautify)

(provide 'ana-bibtex)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-bibtex.el ends here
