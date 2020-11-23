;;; ana-webdev.el --- Package configurations for web development.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package foreman-mode
  :general
  (hd-leader-def
    :keymaps 'web-mode-map
    "f." 'foreman-view-buffer
    "fc" 'foreman-clear
    "fd" 'foreman-stop
    "fe" 'foreman-edit-env
    "fE" 'foreman-env-save
    "fk" 'foreman-kill-buffer
    "fK" 'foreman-kill-proc
    "fn" 'foreman-next-line
    "fp" 'foreman-previous-line
    "fr" 'foreman-restart
    "fR" 'foreman-restart-proc
    "ft" 'foreman-tasks
    "fu" 'foreman-start
    "fU" 'foreman-start-proc))

(use-package graphql)

(use-package rainbow-mode)

(use-package web-mode
  :general
  (hd-leader-def
    :keymaps 'web-mode-map
    "/" 'web-mode-tag-match)
  :mode (("\\.html?\\'"  . web-mode)
         ("\\.[s]css\\'" . web-mode)
         ("\\.jsx?\\'"   . web-mode)
         ("\\.tsx?\\'"   . web-mode)
         ("\\.json\\'"   . web-mode))
  :config
  (setq web-mode-auto-close-style 3
        web-mode-auto-quote-style 3
        web-mode-block-padding 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-closing t
        web-mode-enable-auto-opening t
        web-mode-enable-auto-pairing t
        web-mode-enable-block-face t
        web-mode-enable-css-colorization t
        web-mode-enable-current-column-highlight t
        web-mode-enable-current-element-highlight t
        web-mode-enable-engine-detection t
        web-mode-enable-html-entities-fontification t
        web-mode-enable-sql-detection t
        web-mode-markup-indent-offset 2
        web-mode-script-padding 2
        web-mode-style-padding 2
        web-mode-tag-auto-close-style 2
        web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'"))))

(defun web-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Bootstrap 4"
                                  "CSS"
                                  "HTML"
                                  "JavaScript"
                                  "jQuery")))

(add-hook 'web-mode-hook 'web-doc)

(provide 'ana-webdev)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-webdev.el ends here
