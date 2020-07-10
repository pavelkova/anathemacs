
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(use-package which-key
  :delight which-key-mode
  :init
  (which-key-mode)
  :config
  (setq which-key-is-verbose t
        which-key-add-column-padding 3
        which-key-max-description-length 40
        which-key-max-display-columns nil
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
  (general-create-definer hr-leader-def
    ;; reading, wRiting, research, roam
    :prefix "H-r")
  ;; BUILT IN
  ;; globally available commands organized by
  (general-create-definer cc-leader-def
    :prefix "C-c")
  ;; use with ':keymaps <mode>' to add to
  (general-create-definer cx-leader-def
    :prefix "C-x"))
  ;; other: H-s bound to projectile-mode-map
  ;;        H-l bound to lsp-mode-map

(ha-leader-def
  "." '(:ignore t :which-key "crux")
  "/" '(:ignore t :which-key "system & processes")
  "e" '(:ignore t :which-key "errors")
  "f" '(:ignore t :which-key "files")
  "p" '(:ignore t :which-key "persp")
  "g" '(:ignore t :which-key "git & version control")
  "s" '(:ignore t :which-key "snippets"))

(hd-leader-def
  ;; "."  '(:ignore t :which-key "helm-dash")
  "/"  '(:ignore t :which-key "webdev")
  "a"  '(:ignore t :which-key "anaconda")
  "c"  '(:ignore t :which-key "alchemist")
  "e"  '(:ignore t :which-key "elixir")
  "d"  '(:ignore t :which-key "django")
  "f"  '(:ignore t :which-key "foreman")
  "l"  '(:ignore t :which-key "LSP")
  "n"  '(:ignore t :which-key "npm")
  "p"  '(:ignore t :which-key "python")
  "r"  '(:ignore t :which-key "rails")
  "x"  '(:ignore t :which-key "emamux"))

(hs-leader-def
  "/"   '(:ignore t :which-key "web tools")
  "c"   '(:ignore t :which-key "calendar")
  "e"   '(:ignore t :which-key "media")
  "f"   '(:ignore t :which-key "filing")
  "r"   '(:ignore t :which-key "research")
  "t"   '(:ignore t :which-key "tasks & timing")
  "C-b" '(:ignore t :which-key "brain")
  "C-d" '(:ignore t :which-key "dokuwiki"))

(hr-leader-def
 "c"   '(:ignore t :which-key "calibre")
 "r"   '(:ignore t :which-key "roam")
 "w"   '(:ignore t :which-key "writing"))

(cx-leader-def ; add prefix descriptions to built in C-x commands
  "4" '(:ignore t :which-key "other window")
  "5" '(:ignore t :which-key "frames")
  "8" '(:ignore t :which-key "insert character")
  "a" '(:ignore t :which-key "abbrevs")
  "n" '(:ignore t :which-key "narrow"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
