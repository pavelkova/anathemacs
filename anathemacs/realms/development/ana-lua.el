;;; ana-lua.el --- Package configurations for working with Lua.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-lua
  :hook (lua-mode . (set-local-company-backend company-lua)))

(use-package lua-mode
  :mode "\\.lua\\'")

(defun lua-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Lua")))

(add-hook 'lua-mode-hook 'lua-doc)

(provide 'ana-lua)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lua.el ends here
