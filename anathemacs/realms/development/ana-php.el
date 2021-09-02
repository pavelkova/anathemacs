;;; ana-php.el --- Package configurations for working with PHP.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package php-mode
  :mode "\\.php\\'")

(use-package company-php
  :after company
  :hook php-mode
  :config
  ((ac-php-core-eldoc-setup) ;; enable eldoc
   (make-local-variable 'company-backends)
   (add-to-list 'company-backends 'company-ac-php-backend)))

(provide 'ana-php)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-php.el ends here
