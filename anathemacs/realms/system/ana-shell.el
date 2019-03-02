;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package bash-completion
  :defer t)

(use-package fish-mode
  :defer t)

(use-package insert-shebag
  :defer t)

(use-package multi-term
  :defer t)

(use-package sh-script
  :defer t)

(use-package with-editor
  :hook ((shell-mode fish-mode multi-term) . with-editor-export-editor))

(use-package xterm-color
  :defer t)

(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
