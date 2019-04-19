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

(provide 'ana-lua)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-lua.el ends here
