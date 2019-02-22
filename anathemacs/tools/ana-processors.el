;;; ana-processors.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

;; spell checking
;; (use-package auto-dictionary)

(use-package define-word)

(use-package google-translate
  :defer t)

; errors and linting

(use-package flycheck
  :init
  (global-flycheck-mode))

(provide 'ana-processors)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-processors.el ends here
