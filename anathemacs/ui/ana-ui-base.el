;;; ana-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

(use-package better-defaults)

(use-package format-all)

(use-package pretty-mode
  :config
  (progn
    (global-pretty-mode t)
    (global-prettify-symbols-mode 1)
     (pretty-deactivate-groups
      '(:equality :ordering :ordering-double :ordering-triple
                  :arrows :arrows-twoheaded :punctuation
                  :logic :sets))
     (pretty-activate-groups
      '(:greek :arithmetic-nary))    
     ))

;; fringes
(defun widen-margins ()
  (setq-default left-margin-width 10
                right-margin-width 10)
  (set-window-buffer nil (current-buffer))
  (fringe-mode 4))

(add-hook 'prog-mode-hook 'widen-margins)

(provide 'ana-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ui-base.el ends here
