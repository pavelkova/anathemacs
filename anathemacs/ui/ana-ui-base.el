;;; ana-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(setq inhibit-splash-screen t
      inhibit-startup-message t
      initial-scratch-message ""
      initial-major-mode 'org-mode)

(use-package all-the-icons
  :config
  (setq inhibit-compacting-font-caches t))

(use-package better-defaults
  :demand t)

(use-package mwim
  :general
  (general-define-key
   "C-a"    'mwim-beginning-of-code-or-line
   "C-e"    'mwim-end-of-code-or-line
   "<home>" 'mwim-beginning-of-line-or-code
   "<end>"  'mwim-end-of-line-or-code))

(use-package pretty-mode
  :init
  (progn
    (global-pretty-mode t)
    (global-prettify-symbols-mode 1)
    (pretty-deactivate-groups
     '(:equality :ordering :ordering-double :ordering-triple
                 :arrows :arrows-twoheaded :punctuation
                 :logic :sets))
    (pretty-activate-groups
     '(:greek :arithmetic-nary))))

(add-hook 'text-mode-hook 'auto-fill-mode)
(add-hook 'text-mode-hook 'visual-line-mode)

;; minor mode appearance in modeline
(use-package delight
  :demand t)

(use-package diminish
  :demand t
  :init
  (diminish 'auto-fill-function)
  (diminish 'auto-revert-mode)
  (diminish 'buffer-face-mode)
  (diminish 'display-line-numbers-mode)
  (diminish 'eldoc-mode)
  (diminish 'git-gutter-mode)
  (diminish 'page-break-lines-mode)
  (diminish 'which-key-mode)
  (diminish 'visual-line-mode))

;; for some reason my font isn't automatically set from theme in Void Linux
(add-to-list 'default-frame-alist
                       '(font . "Fira Code 10"))
  
;; get rid of startup warnings
(setq ad-redefinition-action 'accept)

;; for the love of god please make the minibuffer go away

(defun stop-using-minibuffer ()
  "Kill the minibuffer."
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)

(provide 'ana-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ui-base.el ends here
