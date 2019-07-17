
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
  :demand t
  :init
  ;; CUSTOM - by context
  (general-create-definer ha-leader-def
    ;; general bindings for mode-agnostic actions: versioning controls,
    ;; file management, error handling, editing tools, etc.
    :prefix "H-a")
  (general-create-definer hd-leader-def
    ;; keymap prefix for language- and framework- development modes (pony-mode, web-mode, npm-mode, etc.)
    ;; and system/OS integration (tmux, sane-term, tramp)
    :prefix "H-d")
  ;; CUSTOM - by package / purpose
  (general-create-definer hs-leader-def
    ;; prefix for personal management (via org, mu4e, dokuwiki)
    ;; and natural language processing (word count, translation, dictionary)
    :prefix "H-SPC")
  (general-create-definer cmx-leader-def
    ;; projectile versions of frequently used C-x commands, e.g. switching buffers, finding files, etc.
    :prefix "C-M-x")
  ;; BUILT IN
  ;; globally available commands organized by
  (general-create-definer minor-leader-def
    :prefix "C-c")
  ;; use with ':keymaps <mode>' to add to
  (general-create-definer major-leader-def
    :prefix "C-x"))

(ha-leader-def
  ;; "." '(:ignore t :which-key "crux")
  ";" '(:ignore t :which-key "hide & show")
  "c" '(:ignore t :which-key "comments")
  "d" '(:ignore t :which-key "desktop")
  "e" '(:ignore t :which-key "errors")
  "f" '(:ignore t :which-key "files")
  "g" '(:ignore t :which-key "git & version control")
  "h" '(:ignore t :which-key "help")
  "s" '(:ignore t :which-key "snippets")
  "W" '(:ignore t :which-key "windows")
  "w" '(:ignore t :which-key "workspaces"))

(hd-leader-def
  "/"  '(:ignore t :which-key "webdev")
  "a"  '(:ignore t :which-key "anaconda")
  "e"  '(:ignore t :which-key "elixir")
  "d"  '(:ignore t :which-key "djangonaut")
  "f"  '(:ignore t :which-key "foreman")
  "l"  '(:ignore t :which-key "alchemist")
  "n"  '(:ignore t :which-key "npm")
  "o"  '(:ignore t :which-key "pony")
  "p"  '(:ignore t :which-key "python")
  "r"  '(:ignore t :which-key "rails")
  "s"  '(:ignore t :which-key "server & system")
  "t"  '(:ignore t :which-key "terminal & tmux"))

(hs-leader-def
  "/"   '(:ignore t :which-key "web tools")
  "c"   '(:ignore t :which-key "calendar")
  "f"   '(:ignore t :which-key "filing")
  "r"   '(:ignore t :which-key "research")
  "t"   '(:ignore t :which-key "tasks & timing")
  "w"   '(:ignore t :which-key "writing")
  "C-b" '(:ignore t :which-key "brain")
  "C-d" '(:ignore t :which-key "dokuwiki")
  "M-m" '(:ignore t :which-key "media"))

(major-leader-def                       ; add prefix descriptions to built in C-x commands
  "4" '(:ignore t :which-key "other window")
  "5" '(:ignore t :which-key "frames")
  "8" '(:ignore t :which-key "insert character")
  "a" '(:ignore t :which-key "abbrevs")
  "n" '(:ignore t :which-key "narrow"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
