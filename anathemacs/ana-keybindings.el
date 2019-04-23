
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(use-package which-key
  :diminish t
  :init
  (which-key-mode)
  :config
  (setq which-key-is-verbose t
        which-key-max-description-length 60
        which-key-show-docstrings t
        which-key-sort-uppercase-first nil))

;; Get rid of insert binding ;; whyyyy
(setq help-char 0)

;; Use caps key as hyper
(define-key key-translation-map [8711] 'event-apply-hyper-modifier)

(use-package general
  :init
  (general-create-definer ha-leader-def
    ;; general bindings for mode-agnostic actions: projectile and versioning controls, file management, error handling, editing tools, etc.
    :prefix "H-a")
  (general-create-definer hd-leader-def
    ;; keymap prefix for common development modes (pony-mode, web-mode, npm-mode, etc.)
    :prefix "H-d")
  (general-create-definer hs-leader-def
    :prefix "H-SPC")
  ;; globally available commands organized by
  (general-create-definer minor-leader-def
    :prefix "C-c")
  ;; use with ':keymaps <mode>' to add to
  )

(ha-leader-def
  "c" '(:ignore t :which-key "comments")
  "e" '(:ignore t :which-key "errors")
  "f" '(:ignore t :which-key "files")
  "g" '(:ignore t :which-key "git/version-control")
  "h" '(:ignore t :which-key "help")
  "i" '(:ignore t :which-key "insert")
  "p" '(:ignore t :which-key "projects")
  "t" '(:ignore t :which-key "terminal")
  "v" '(:ignore t :which-key "visibility")
  "W" '(:ignore t :which-key "windows")
  "w" '(:ignore t :which-key "workspaces"))

(hs-leader-def
  "." '(:ignore t :which-key "speed dial")
  "/" '(:ignore t :which-key "web tools")
  "B" '(:ignore t :which-key "brain")
  "d" '(:ignore t :which-key "data")
  "D" '(:ignore t :which-key "dokuwiki")
  "f" '(:ignore t :which-key "filing")
  "M" '(:ignore t :which-key "media")
  "p" '(:ignore t :which-key "project management")
  "r" '(:ignore t :which-key "research")
  "s" '(:ignore t :which-key "system")
  "w" '(:ignore t :which-key "writing"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
