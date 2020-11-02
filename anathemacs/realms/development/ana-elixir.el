;;; ana-elixir.el --- Package configurations for working with C/C++.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package flycheck-elixir
  :after flycheck
  :hook (elixir-mode . flycheck-elixir-setup)
  :config
  (setq flycheck-elixir-credo-strict t))

(use-package elixir-mode
  ;; :general
  ;; (hd-leader-def
  ;;   "e." 'elixir-mode
  ;;   "eg" 'elixir-mode-open-github
  ;;   "eF" 'elixir-format
  ;;   "eh" 'elixir-mode-open-elixir-home
  ;;   "ed" 'elixir-mode-open-docs-master
  ;;   "eD" 'elixir-mode-open-docs-stable)
  :config
  (setq lsp-clients-elixir-server-executable "~/.config/emacs/lsp/elixir-ls/release/debugger.sh"))

(defun elixir-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Elixir")))

(add-hook 'elixir-mode-hook 'elixir-doc)

(provide 'ana-elixir)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-elixir.el ends here
