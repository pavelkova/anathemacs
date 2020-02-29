;;; ana-elixir.el --- Package configurations for working with C/C++.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package flycheck-elixir
  :after flycheck
  :hook (elixir-mode . flycheck-elixir-setup))

(use-package alchemist
  :config
  (setq alchemist-mix-command "~/.asdf/installs/elixir/1.8.2/bin/mix"
        alchemist-key-command-prefix (kbd "H-d l")))

(use-package elixir-mode
  :config
  (hd-leader-def
    "e." 'elixir-mode
    "eg" 'elixir-mode-open-github
    "eF" 'elixir-format
    "eh" 'elixir-mode-open-elixir-home
    "ed" 'elixir-mode-open-docs-master
    "eD" 'elixir-mode-open-docs-stable))

(defun elixir-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Elixir")))

(add-hook 'elixir-mode-hook 'elixir-doc)

(provide 'ana-elixir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-elixir.el ends here
