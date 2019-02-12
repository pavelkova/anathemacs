
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(use-package general :ensure t)

(general-define-key
 "C-s" 'swiper
 "M-x" 'counsel-M-x)

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
