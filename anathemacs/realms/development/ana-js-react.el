;;; ana-js-react.el --- Package configurations for working with React.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:


;; (use-package react-snippets)

(use-package rjsx-mode
  :mode ("src\\/.*\\.js\\'" . rjsx-mode))

;; (defun activate-tide-mode ()
;;   "Use hl-identifier-mode only on js or ts buffers."
;;   (when (and (stringp buffer-file-name)
;;              (string-match "\\.[tj]sx?\\'" buffer-file-name))
;;     (tide-setup)
;;     (tide-hl-identifier-mode)))

;; (use-package tide
;;   :hook ((web-mode . activate-tide-mode)
;;          (before-save . tide-format-before-save))
;;   :config
;;   (setq tide-format-options '()))

(provide 'ana-js-react)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js-react.el ends here
