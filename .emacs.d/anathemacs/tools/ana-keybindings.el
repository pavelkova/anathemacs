
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(eval-when-compile
  (require 'ana-base))

(general-define-key
 "C-s" 'swiper
 "M-x" 'counsel-M-x)

(use-package which-key
  :init
  (which-key-mode))

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

;; errors
(hx-leader-def
 "e." 'error-transient-state
 "en" 'next-error
 "ep" 'previous-error)

;; comments
;; (hx-leader-def
;; "ch" hide/show comments toggle
;; )

;; toggles
(hx-leader-def
 "tD" 'debug-on-error
 "tg" 'golden-ratio
 "th" 'highlight-indentation
 ;; "tm" '(:ignore t :which-key "modeline")
 ;; "tmb"
 )

;; text
(hx-leader-def
 "xa" '(:ignore t :which-key "align")
 "xc" 'count-region
 "xd" '(:ignore t :which-key "delete")
 "xJ" 'move-text-down
 "xj" '(:ignore t :which-key "justify")
 "xK" 'move-text-up
 "xl" '(:ignore t :which-key "lines")
 "xr" '(:ignore t :which-key "regular expressions")
 "xt" '(:ignore t :which-key "transpose")
 "xU" 'upcase-region
 "xu" 'downcase-region
 "xw" '(:ignore t :which-key "words")
 )

;; zoom
(hx-leader-def
 "z." 'fold-transient-state
 "z," 'zoom-frm-transient-state
 "zf" 'scale-font-transient-state)


(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
