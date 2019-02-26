
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(use-package which-key
  :init
  (which-key-mode))

;; Use caps key as hyper
(define-key key-translation-map [8711] 'event-apply-hyper-modifier)

(use-package general
  :init
  (general-create-definer hx-leader-def
    :prefix "H-x")
  (general-create-definer hs-leader-def
    :prefix "H-SPC")
  )

(general-define-key
 "C-s" 'swiper
 "M-x" 'counsel-M-x
 "<f8>" 'neotree-toggle)

(hx-leader-def
  "a" '(:ignore t :which-key "applications")
  "c" '(:ignore t :which-key "comments")
  "e" '(:ignore t :which-key "errors")
  "f" '(:ignore t :which-key "files")
  "g" '(:ignore t :which-key "git/version-control")
  "i" '(:ignore t :which-key "insert")
  "j" '(:ignore t :which-key "jump/join/split")
  "m" '(:ignore t :which-key "major-mode-cmd")
  "o" '(:ignore t :which-key "org")
  "p" '(:ignore t :which-key "projects")
  "s" '(:ignore t :which-key "search/symbols")
  "v" '(:ignore t :which-key "visibility")
 )

;; errors
(hx-leader-def
 "e." 'error-transient-state
 "en" 'next-error
 "ep" 'previous-error
;; comments
  "te" 'comment-dwim ;; add to end of line
  "tl" 'comment-line
  "cr" 'comment-or-uncomment-region)
;; "ch" hide/show comments toggle

(hs-leader-def
 "a" '(:ignore t :which-key "archive")
 "x" '(:ignore t :which-key "text"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
