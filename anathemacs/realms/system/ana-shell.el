;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package emamux
  :bind-keymap
  ("H-d x" . emamux:keymap))

(use-package fish-mode
  :mode ("\\.fish\\'"))

(use-package terminal-here
  :general
  (hd-leader-def
    "M-<Return>" 'terminal-here-project-launch)
  (ha-leader-def
    "M-<Return>" 'terminal-here-launch)
  :config
  (setq terminal-here-terminal-command '("alacritty")))

(use-package vterm
  :general
  (ha-leader-def
    "<Return>" 'vterm))

(use-package vterm-toggle
  :general
  (general-define-key
   "C-M-t" 'vterm-toggle-cd))

(use-package with-editor
  :hook ((shell-mode ansi-term fish-mode vterm tramp-term) . with-editor-export-editor))


(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
