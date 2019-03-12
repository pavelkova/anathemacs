;;; ana-js.el --- Package configurations for working with JavaScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; json
(use-package json-mode
  :mode "\\.json\\'"
  :config
  (use-package json-reformat)
  (use-package json-snatcher))

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
