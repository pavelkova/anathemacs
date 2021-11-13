
;;; ana-keybindings.el --- Init ivy, company, counsel

;;; Commentary:
;;  General keybindings for built-in functions that don't need package configuration
;;

;;; Code:
(use-package which-key
  :delight which-key-mode
  ;; :general
  ;; (:keymaps 'which-key-C-h-map
  ;;           "<Left"   'which-key-show-previous-page-cycle
  ;;           "<Right>" 'which-key-show-next-page-cycle)
  :init
  (which-key-mode)
  :config
  (setq which-key-add-column-padding 1
        which-key-idle-delay 1.0
        which-key-is-verbose t
        which-key-max-description-length 60
        which-key-max-display-columns nil
        which-key-popup-type 'side-window
        which-key-side-window-max-height 0.6
        which-key-show-docstrings t
        which-key-sort-uppercase-first nil
        ;; which-key-paging-prefixes '("C-c" "C-x" "H-a" "H-d" "H-l" "H-r" "H-s" "H-SPC")
        ;; which-key-paging-key "<kp-enter>"
        ;; help-char "<kp-enter>"
        ))

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
  (general-create-definer hl-leader-def
    ;; language server protocol
    :prefix "H-l")
  (general-create-definer hr-leader-def
    ;; reading, wRiting, research, roam
    :prefix "H-r")
  (general-create-definer hs-leader-def
    ;; prefix for personal management (via org, mu4e, dokuwiki)
    ;; and natural language processing (word count, translation, dictionary)
    :prefix "H-SPC")
  ;; BUILT IN
  ;; globally available commands organized by
  (general-create-definer cc-leader-def
    :prefix "C-c")
  ;; use with ':keymaps <mode>' to add to
  (general-create-definer cx-leader-def
    :prefix "C-x"))
;; other: H-s bound to projectile-mode-map
;;        H-l bound to lsp-mode-map

(general-unbind 'insert
  "C-z")

(ha-leader-def
  "/"     '(:ignore t :which-key "system & processes")
  "e"     '(:ignore t :which-key "errors")
  "f"     '(:ignore t :which-key "folding")
  "m"     '(:ignore t :which-key "mode management")
  "p"     '(:ignore t :which-key "persp")
  "g"     '(:ignore t :which-key "git & version control")
  "s"     '(:ignore t :which-key "snippets")
  "C-c"   '(:ignore t :which-key "emacs")
  "C-c e" 'eval-buffer
  "C-c k" 'save-buffers-kill-emacs
  "C-c K" 'kill-emacs
  "C-c r" 'recover-this-file
  "C-c R" 'recover-file)

(hd-leader-def
  "d"  '(:ignore t :which-key "docker")
  "m"  '(:ignore t :which-key "polymode")
  "x"  '(:ignore t :which-key "emamux"))

(hs-leader-def
  "/"   '(:ignore t :which-key "web tools")
  "d"   '(:ignore t :which-key "data")
  "C"   '(:ignore t :which-key "calendar")
  "e"   '(:ignore t :which-key "media")
  "f"   '(:ignore t :which-key "filing")
  "C-c" '(:ignore t :which-key "calibre")
  ;; "C-j" '(:ignore t :which-key "jupyter")
  "w"   '(:ignore t :which-key "writing"))

(hr-leader-def
  "b"   '(:ignore t :which-key "bibtex"))

(cx-leader-def ; add prefix descriptions to built in C-x commands
  "4" '(:ignore t :which-key "other window")
  "5" '(:ignore t :which-key "frames")
  "8" '(:ignore t :which-key "insert character")
  "a" '(:ignore t :which-key "abbrevs")
  "n" '(:ignore t :which-key "narrow"))

(provide 'ana-keybindings)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-keybindings.el ends here
