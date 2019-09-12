;;; ana-web.el --- Package configurations for web development.

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

(use-package emmet-mode
  :hook web-mode
  :config
  (setq ennet-move-cursor-between-quotes t))

(use-package graphql)

(use-package graphql-mode
  :mode "\\.graphql\\")

(use-package json-mode
  :mode "\\.json\\'"
  :config
  (use-package json-reformat)
  (use-package json-snatcher))

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
  :mode (("\\.erb\\'"    . web-mode)
         ("\\.html?\\'"  . web-mode)
         ("\\.js[x]\\'"  . web-mode)
         ("\\.[s]css\\'" . web-mode)
         ("\\.xml\\'"    . web-mode))
  :config
  (set-local-company-backend company-web-html)
  (setq web-mode-block-padding 2
        web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-closing t
        web-mode-enable-auto-pairing
        web-mode-enable-block-face t
        web-mode-enable-css-colorization t
        web-mode-enable-current-element-highlight t
        web-mode-markup-indent-offset 2
        web-mode-script-padding 2
        web-mode-style-padding 2
        web-mode-tag-auto-close-style 2))

(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
