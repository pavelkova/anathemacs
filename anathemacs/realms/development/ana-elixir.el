;;; ana-elixir.el --- Package configurations for working with C/C++.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; (use-package flycheck-elixir
;;   :after flycheck
;;   :hook (flycheck-mode . flycheck-elixir-setup))

(use-package alchemist
  :config
  (setq alchemist-mix-command "~/.asdf/installs/elixir/1.8.2/bin/mix"
        alchemist-key-command-prefix (kbd "H-d l")))

(use-package elixir-mode
  :config
  (hd-leader-def
    "e." 'elixir-mode
    "eg" 'elixir-mode-open-github))

(provide 'ana-elixir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-elixir.el ends here
