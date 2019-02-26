;;; ana-shell.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

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

(use-package xterm-color
  :defer t)

(provide 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-shell.el ends here
