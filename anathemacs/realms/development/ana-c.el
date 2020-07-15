;;; ana-c.el --- Package configurations for working with C/C++.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package irony
  :hook (((c++-mode c-mode objc-mode) . irony-mode)
         (irony-mode . irony-cdb-autosetup-compile-options)))

(use-package flycheck-irony
  :after flycheck
  :hook (flycheck-mode . flycheck-irony-setup))

(defun c++-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("C++")))

(add-hook 'c++-mode-hook 'c++-doc)

(provide 'ana-c)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-c.el ends here
