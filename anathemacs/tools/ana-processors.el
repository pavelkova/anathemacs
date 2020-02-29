;;; ana-processors.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; spell checking
(use-package auto-dictionary)

(use-package helm-dictionary
  :after helm)

(use-package define-word
  :general
  (hs-leader-def
    "wD" 'define-word))

(use-package google-translate
  :general
  (hs-leader-def
    "wT" 'google-translate-smooth-translate)
  :init
  (setq google-translate-translation-directions-alist
        '(("es" . "en") ("en" . "es") ("en" . "fr") ("fr" . "en"))))

                                        ; completion
(use-package company
  :delight company-mode
  :init
  (global-company-mode)
  :config
  (company-tng-configure-default)
  (setq company-show-numbers t
        company-tooltip-align-annotations t
        company-tooltip-margin 3))

(defun set-local-company-backend (backend)
  "Only load backends when needed"
  (set (make-local-variable 'company-backends) '(backend)) (company-mode))


; errors and linting

(use-package flycheck
  :delight flycheck-mode
  :config
  (global-flycheck-mode)
  (define-key flycheck-mode-map flycheck-keymap-prefix nil)
  (setq flycheck-keymap-prefix (kbd "H-a e"))
  (define-key flycheck-mode-map flycheck-keymap-prefix
    flycheck-command-map))

(provide 'ana-processors)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-processors.el ends here
