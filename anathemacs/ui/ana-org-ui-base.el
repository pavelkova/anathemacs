;;; ana-org-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(load-file (concat user-emacs-directory "anathemacs-theme-colors.el"))

;; (defface org-at-tag
;;   '((nil :inherit org-tag :foreground ana-yellow-1 ))
;;   "org at tag face")

;; (defface org-hashtag
;;   '((nil :inherit org-tag :foreground ana-magenta-1 ))
;;   "org hashtag face")

;; (font-lock-add-keywords
;;  'org-mode
;;  '((":\\(@[^\:]+\\):" (1 'org-tag-face))))

;; (add-to-list 'org-tag-faces '("@.*" . (:foreground ana-yellow-1)))

;; (defun org-get-tag-face (kwd)
;;   "Get the right face for a TODO keyword KWD.
;; If KWD is a number, get the corresponding match group."
;;   (if (numberp kwd) (setq kwd (match-string kwd)))
;;   (let ((special-tag-face (or (cdr (assoc kwd org-tag-faces))
;;                               (and (string-match "^@.*" kwd)
;;                                    (cdr (assoc "@.*" org-tag-faces))))))
;;     (or (org-face-from-face-or-color 'tag 'org-tag special-tag-face)
;;         'org-tag)))

(with-eval-after-load 'org
  (setq org-allow-promoting-top-level-subtree t
        org-cycle-level-faces nil
        org-ellipsis " ⬎"
        org-list-indent-offset 2
        org-indent-indentation-per-level 2
        org-tags-column 0
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline nil
        org-fontify-quote-and-verse-blocks t
        org-footnote-auto-adjust t
        org-footnote-define-inline t
        org-startup-align-all-tables t
        org-startup-indented t
        org-startup-with-inline-images t))

(use-package olivetti
  :delight olivetti-mode
  :hook ((text-mode nov-mode org-mode) . olivetti-mode)
  :init
  (setq olivetti-body-width 0.85))

(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  :config
    (setq org-bullets-bullet-list '("⋅"))
)

(use-package org-variable-pitch
  :delight org-variable-pitch-minor-mode
  :hook (org-mode . org-variable-pitch-minor-mode)
  :config
  (add-to-list 'org-variable-pitch-fixed-faces 'org-special-keyword 'org-link))

(provide 'ana-org-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-ui-base.el ends here
