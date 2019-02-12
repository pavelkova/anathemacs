
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(general-define-key
 "C-s" 'swiper
 "M-x" 'counsel-M-x)

(use-package which-key)

(hx-leader-def
 "a" '(:ignore t :which-key "applications")
 "C" '(:ignore t :which-key "compile")
 "c" '(:ignore t :which-key "capture/comments")
 "e" '(:ignore t :which-key "errors")
 "f" '(:ignore t :which-key "files")
 "g" '(:ignore t :which-key "git/version-control")
 "h" '(:ignore t :which-key "help")
 "i" '(:ignore t :which-key "insert")
 "j" '(:ignore t :which-key "jump/join/split")
 "k" '(:ignore t :which-key "lisp")
 "m" '(:ignore t :which-key "major-mode-cmd")
 "p" '(:ignore t :which-key "projects")
 "s" '(:ignore t :which-key "search/symbols")
 "T" '(:ignore t :which-key "UI toggles/themes")
 "t" '(:ignore t :which-key "toggles")
 "x" '(:ignore t :which-key "text")
 "z" '(:ignore t :which-key "zoom")
  )

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
