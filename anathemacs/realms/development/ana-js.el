;;; ana-js.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; javascript
;; (use-package indium
;;   :defer t)

(use-package js2-mode)

;; json
(use-package json-mode
  :config
  (use-package json-reformat)
  (use-package json-snatcher))

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
