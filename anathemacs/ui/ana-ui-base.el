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
   "C-a" 'mwim-beginning-of-code-or-line
   "C-e" 'mwim-end-of-code-or-line
   "<home>" 'mwim-beginning-of-line-or-code
   "<end>"  'mwim-end-of-line-or-code))

(use-package format-all
  :general
  (hx-leader-def
    "F" 'format-all-buffer))

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
;; (use-package delight)
(use-package diminish
  :demand t)

(diminish 'visual-line-mode)
(diminish 'line-number-mode)
(diminish 'auto-fill-function)
(diminish 'auto-revert-mode)
(diminish 'eldoc-mode)
(diminish 'buffer-face-mode)
(diminish 'page-break-lines-mode)
(diminish 'which-key-mode)

;; get rid of startup warnings
(setq ad-redefinition-action 'accept)

(provide 'ana-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ui-base.el ends here