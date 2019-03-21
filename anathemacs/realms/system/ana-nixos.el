;;; ana-nixos.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package company-nixos-options
  :hook (nix-mode . (set-local-company-backend company-nixos-options)))

(use-package nixos-options)

(use-package nix-mode
  :mode "\\.nix\\'"
  :general
  (hs-leader-def
    "sN" 'nix-repl))

(provide 'ana-nixos)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-nixos.el ends here
