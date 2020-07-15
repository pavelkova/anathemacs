;;; ana-lisp.el --- Package configurations for working with Lisp.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package slime)

(use-package elisp-slime-nav
  :delight
  :hook ((emacs-lisp-mode ielm-mode) . elisp-slime-nav-mode))

(defun elisp-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Emacs Lisp")))

(add-hook 'emacs-lisp-mode-hook 'elisp-doc)

(provide 'ana-lisp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lisp.el ends here
