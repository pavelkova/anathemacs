;;; ana-webdev.el --- Package configurations for web development.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package company-web
  :general
  (hd-leader-def
    "/c" 'company-web-html))

;; (use-package emmet-mode
;;   :hook web-mode
;;   :config
;;   (setq emmet-move-cursor-between-quotes t))

(use-package graphql)

;; (use-package graphql-mode
;;   :mode "\\.graphql\\")

(use-package rainbow-mode)

(use-package web-beautify
  :general
  (hd-leader-def
    "/b"  '(:ignore t :which-key "beautify")
    "/bc" 'web-beautify-css
    "/bh" 'web-beautify-html
    "/bj" 'web-beautify-js))


(use-package web-mode
  :general
  (hd-leader-def
    "/t" 'web-mode-tag-match)
  :mode (("\\.html?\\'" . web-mode)
         ("\\.[s]css\\'"   . web-mode)
         ("\\.jsx?\\'"  . web-mode)
         ("\\.tsx?\\'"  . web-mode)
         ("\\.json\\'"  . web-mode))
  :bind (:map web-mode-map
              ("RET" . newline-and-indent))
  :config
  (set-local-company-backend company-web-html)
  (setq web-mode-block-padding 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-closing t
        web-mode-enable-auto-pairing
        web-mode-enable-block-face t
        web-mode-enable-css-colorization t
        web-mode-enable-current-column-highlight t
        web-mode-enable-current-element-highlight t
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
