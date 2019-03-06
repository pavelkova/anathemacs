
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(use-package which-key
  :init
  (which-key-mode))

;; Get rid of keypad bindings
;; (dolist (key '((kbd "<kp-0>"
;;                (kbd "<kp-1>")
;;                (kbd "<kp-2>")
;;                (kbd "<kp-3>")
;;                (kbd "<kp-4>")
;;                (kbd "<kp-5>")
;;                (kbd "<kp-6>")
;;                (kbd "<kp-7>")
;;                (kbd "<kp-8>")
;;                (kbd "<kp-9>")
;;                ;; (kbd "<kp-add>")      ;; unbound
;;                ;; (kbd "<kp-decimal")   ;; unbound
;;                (kbd "kp-enter")
;;                (kbd "<kp-subtract>")
;;                ;; (kbd "<kp-multiply>") ;; unbound
;;                (kbd "<kp-divide>")
;;                (kbd "<end>")
;;                (kbd "<home>")
;;                (kbd "<next>")
;;                (kbd "<prior>")
;;                (kbd "<delete>")
;;                ;; (kbd "<pause>")       ;; unbound
;;                ;; (kbd "<print>")       ;; unbound
;;                ))
;;   (global-unset-key key))
(global-unset-key (kbd "<kp-0>"))

;; Use caps key as hyper
(define-key key-translation-map [8711] 'event-apply-hyper-modifier)

(use-package general
  :init
  (general-create-definer hx-leader-def
    ;; general bindings for mode-agnostic actions: projectile and versioning controls, file management, error handling, editing tools, etc.
    :prefix "H-x")
  (general-create-definer hs-leader-def
    :prefix "H-SPC")
  ;; globally available commands organized by
  (general-create-definer minor-leader-def
    :prefix "C-c")
  ;; use with ':keymaps <mode>' to add to
  )

(general-define-key
 "C-s" 'swiper
 "M-x" 'counsel-M-x
 "<f8>" 'neotree-toggle)

(hx-leader-def
  "c" '(:ignore t :which-key "comments")
  "e" '(:ignore t :which-key "errors")
  "f" '(:ignore t :which-key "files")
  "g" '(:ignore t :which-key "git/version-control")
  "h" '(:ignore t :which-key "help")
  "i" '(:ignore t :which-key "insert")
  "p" '(:ignore t :which-key "projects")
  "v" '(:ignore t :which-key "visibility")
  "w" '(:ignore t :which-key "windows/layouts")
 )

;; errors
(minor-leader-def
  "!" '(:ignore t :which-key "flycheck"))

(hx-leader-def
 "e." 'error-transient-state
 "en" 'next-error
 "ep" 'previous-error
;; comments
  "c]"  'comment-dwim ;; add to end of line
  "c\-" 'comment-line
  "c["  'comment-or-uncomment-region)

(hs-leader-def
  "a" '(:ignore t :which-key "archive")
  "d" '(:ignore t :which-key "data")
  "D" '(:ignore t :which-key "dokuwiki")
  "o" '(:ignore t :which-key "org")
  "r" '(:ignore t :which-key "research")
  "s" '(:ignore t :which-key "system")
  "w" '(:ignore t :which-key "writing"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
