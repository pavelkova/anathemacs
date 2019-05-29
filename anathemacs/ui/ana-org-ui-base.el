;;; ana-org-ui-base.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package olivetti
  :hook (text-mode . olivetti-mode)
  :init
  (setq olivetti-body-width 0.85))

(with-eval-after-load 'org
  (setq org-ellipsis "..."
        org-list-indent-offset 2
        org-tags-column 0
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-agenda-block-separator ""
        org-fontify-whole-heading-line t
        org-fontify-done-headline nil
        org-fontify-quote-and-verse-blocks t
        org-startup-align-all-tables t
        org-startup-indented t
        org-startup-with-inline-images t))
  
(use-package org-bullets
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
  :config
  (setq org-bullets-bullet-list '("⋅")))

(use-package mixed-pitch
  :diminish mixed-pitch-mode
  :hook (org-mode . mixed-pitch-mode)
  :config
  (add-to-list 'mixed-pitch-fixed-pitch-faces 'org-special-keyword 'org-link))

(diminish 'org-indent-mode)

;; (defun org-cycle-hide-drawers (state)
;;   "Re-hide all drawers after a visibility state change."
;;   (when (and (derived-mode-p 'org-mode)
;;              (not (memq state '(overview folded contents))))
;;     (save-excursion
;;       (let* ((globalp (memq state '(contents all)))
;;              (beg (if globalp
;;                     (point-min)
;;                     (point)))
;;              (end (if globalp
;;                     (point-max)
;;                     (if (eq state 'children)
;;                       (save-excursion
;;                         (outline-next-heading)
;;                         (point))
;;                       (org-end-of-subtree t)))))
;;         (goto-char beg)
;;         (while (re-search-forward org-drawer-regexp end t)
;;           (save-excursion
;;             (beginning-of-line 1)
;;             (when (looking-at org-drawer-regexp)
;;               (let* ((start (1- (match-beginning 0)))
;;                      (limit
;;                        (save-excursion
;;                          (outline-next-heading)
;;                            (point)))
;;                      (msg (format
;;                             (concat
;;                               "org-cycle-hide-drawers:  "
;;                               "`:END:`"
;;                               " line missing at position %s")
;;                             (1+ start))))
;;                 (if (re-search-forward "^[ \t]*:END:" limit t)
;;                   (outline-flag-region start (point-at-eol) t)
;;                   (user-error msg))))))))))

(provide 'ana-org-ui-base)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-org-ui-base.el ends here

