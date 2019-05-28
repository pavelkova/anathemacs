;;; ana-js.el --- Package configurations for working with JavaScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package js2-mode
  :hook (js-mode . js2-minor-mode))

(use-package rjsx-mode
  :mode ("components\\/.*\\.js\\'" . rjsx-mode))

(use-package tern
  :load-path "/usr/lib/node_modules/tern/emacs/"
  :hook (js-mode . tern-mode))

(use-package company-tern
  :hook (tern-mode . (set-local-company-backend company-tern)))

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
