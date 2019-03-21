;;; ana-web.el --- Package configurations for web development.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; Tern
;; (add-to-list 'load-path "/usr/lib/node_modules/tern/emacs/")
;; (autoload 'tern-mode "tern.el" nil t)
;; (add-hook 'js-mode-hook (lambda () (tern-mode t)))

(use-package tern
  :load-path "/usr/lib/node_modules/tern/emacs/"
  :hook (js-mode . tern-mode))

(use-package company-tern
  :hook (tern-mode . (set-local-company-backend company-tern)))

(use-package company-web
  :general
  (hd-leader-def
    "wc" 'company-web-html))

(use-package web-mode
  :general
  (hd-leader-def
    "w" '(:ignore t :which-key "web"
    "wT" 'web-mode-tag-match))
  :mode (("\\.erb\\'"    . web-mode)
         ("\\.html?\\'"  . web-mode)
         ("\\.js[x]\\'"  . web-mode)
         ("\\.[s]css\\'" . web-mode)
         ("\\.xml\\'"    . web-mode))
  :config
  (set-local-company-backend company-web-html)
  (setq web-mode-code-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-enable-auto-closing t
        web-mode-enable-block-face t
        web-mode-enable-css-colorization t
        web-mode-markup-indent-offset 2
        web-mode-tag-auto-close-style 2))

(use-package rainbow-mode)

(use-package emmet-mode)

(use-package web-beautify
  :general
  (hd-leader-def
    "wb"  '(:ignore t :which-key "beautify")
    "wbc" 'web-beautify-css
    "wbh" 'web-beautify-html
    "wbj" 'web-beautify-js))

(provide 'ana-web)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-web.el ends here
