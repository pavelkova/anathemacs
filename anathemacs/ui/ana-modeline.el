;;; ana-modeline.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package spaceline
  :init
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-ati)))
                spaceline-toggle-evil-state-off))

(require 'spaceline-config)
(spaceline-emacs-theme)

;; minor mode appearance in modeline
(use-package delight
  :init
  (delight '((auto-fill-function nil "simple")
             (auto-revert-mode nil "autorevert")
             (buffer-face-mode nil "face-remap")
             (display-line-numbers-mode nil "display-line-numbers")
             (eldoc-mode nil "eldoc")
             (git-gutter-mode nil "git-gutter")
             (org-cdlatex-mode nil "org")
             (org-indent-mode nil "org")
             (page-break-lines-mode nil "page-break-lines")
             (visual-line-mode nil "simple"))))

;; (use-package diminish
;;   :demand t
;;   :init
;;   (diminish 'auto-fill-function)
;;   (diminish 'auto-revert-mode)
;;   (diminish 'buffer-face-mode)
;;   (diminish 'display-line-numbers-mode)
;;   (diminish 'eldoc-mode)
;;   ;; (diminish 'flymake-mode)
;;   ;; (diminish 'git-gutter-mode)
;;   (diminish 'page-break-lines-mode)
;;   ;; (diminish 'which-key-mode)
;;   (diminish 'visual-line-mode)
;;   )

(provide 'ana-modeline)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-modeline.el ends here
