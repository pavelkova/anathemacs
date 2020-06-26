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

(use-package helm-nixos-options
  :general
  (hd-leader-def
    "sN" 'helm-nixos-options))

(use-package nix-mode
  :mode "\\.nix\\'")

(use-package nix-haskell-mode
  :hook (haskell-mode . nix-haskell-mode))

;; WINDOW MANAGERS

;; COMMON
(use-package logview)

(use-package symon
  :general
  (ha-leader-def
    "/s" 'symon-mode))

(use-package daemons
  :general
  (ha-leader-def
    "/e" 'daemons))

(ha-leader-def
  "/l" 'list-processes)

(provide 'ana-os)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-os.el ends here
