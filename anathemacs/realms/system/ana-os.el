;;; ana-os.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; ARCH LINUX

;; NIXOS
(use-package company-nixos-options
  :hook (nix-mode . (set-local-company-backend company-nixos-options)))

(use-package nixos-options)

;; (use-package helm-nixos-options
;;   :general
;;   (hd-leader-def
;;     "sN" 'helm-nixos-options))

(use-package nix-mode
  :mode "\\.nix\\'")

(use-package nix-haskell-mode
  :hook (haskell-mode . nix-haskell-mode))

(use-package nix-mode
  :mode "\\.nix\\'")

(use-package nix-haskell-mode
  :hook (haskell-mode . nix-haskell-mode))

;; WINDOW MANAGERS

;; COMMON
(use-package logview)

;; system resources
(use-package symon
  :general
  (ha-leader-def
    "/s" 'symon-mode))

;; emacs processes
(ha-leader-def
  "/l" 'list-processes)

(use-package helm-proc
  :general
  (ha-leader-def
    "/p" 'helm-proc))

;; systemd
(use-package systemd)

(use-package daemons
  :general
  (ha-leader-def
    "/e" 'daemons))

(use-package helm-systemd
  :general
  (ha-leader-def
    "/d" 'helm-systemd)
  :config
  (setq helm-systemd-list-all t))

;; integrate with system pass
(use-package pass)

(require 'auth-source-pass)
(auth-source-pass-enable)
(setq auth-sources '(password-store))

(provide 'ana-os)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-os.el ends here
