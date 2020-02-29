;;; ana-php.el --- Package configurations for working with PHP.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package php-mode
  :mode "\\.php\\'"
  :config
  (eval-after-load 'php-mode
  '(require 'php-ext)))

(use-package company-php
  :after company
  :hook php-mode
  :config
  ((ac-php-core-eldoc-setup) ;; enable eldoc
   (make-local-variable 'company-backends)
   (add-to-list 'company-backends 'company-ac-php-backend)))

(defun php-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("PHP")))

(add-hook 'php-mode-hook 'php-doc)

(provide 'ana-php)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-php.el ends here
