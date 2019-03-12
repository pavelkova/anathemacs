;;; ana-web.el --- Package configurations for web development.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package company-web
  :hook (web-mode . (set-local-company-backend company-web)))

(use-package web-mode
  :mode (("\\.erb\\'"    . web-mode)
         ("\\.html?\\'"  . web-mode)
         ("\\.js[x]\\'"  . web-mode)
         ("\\.[s]css\\'" . web-mode)
         ("\\.xml\\'"    . web-mode))
  :config
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2
        web-mode-enable-css-colorization t
        web-mode-enable-block-face t)
  (minor-leader-def
    :keymaps 'web-mode-map
    "dT" 'web-mode-tag-match))

(use-package rainbow-mode
  :hook css-mode)

(use-package css-mode)

(use-package emmet-mode)

(use-package haml-mode)

(use-package less-css-mode)

(use-package pug-mode)

(use-package sass-mode)

(use-package scss-mode)

(use-package tagedit)

(use-package web-beautify)

(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
