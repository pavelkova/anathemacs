;;; ana-os.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; ARCH LINUX
(use-package systemd)

;; NIXOS
(use-package company-nixos-options
  :hook (nix-mode . (set-local-company-backend company-nixos-options)))

(use-package nixos-options)

(use-package nix-mode
  :mode "\\.nix\\'"
  :general
  (hs-leader-def
    "sN" 'nix-repl))

;; WINDOW MANAGERS
;; (use-package i3wm)
(use-package fvwm-mode)

;; COMMON
(use-package symon
  :general
  (hs-leader-def
    "s?" 'symon-mode))

(use-package pass)

(require 'auth-source-pass)
(auth-source-pass-enable)
(setq auth-sources '(password-store))

(provide 'ana-os)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-os.el ends here
