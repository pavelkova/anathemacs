;;; ana-modeline.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

(use-package spaceline
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-ati)))))

(require 'spaceline-config)
(spaceline-emacs-theme)

;; (use-package spaceline-all-the-icons
;;   :after spaceline
;;   :config
;;   (spaceline-all-the-icons-theme)
;;   (spaceline-all-the-icons--setup-neotree))



(provide 'ana-modeline)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-modeline.el ends here
