;;; ana-elisp.el --- Package configurations for working with elisp.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package elisp-slime-nav
  :delight
  :hook ((emacs-lisp-mode ielm-mode) . elisp-slime-nav-mode))

(defun elisp-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Emacs Lisp")))

(add-hook 'emacs-lisp-mode-hook 'elisp-doc)

(provide 'ana-elisp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-elisp.el ends here
