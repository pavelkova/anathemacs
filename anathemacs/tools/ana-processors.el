;;; ana-processors.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; spell checking
;; (use-package auto-dictionary)

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

; errors and linting

(use-package flycheck
  :diminish flycheck-mode
  :init
  (global-flycheck-mode)
  (define-key flycheck-mode-map flycheck-keymap-prefix nil)
  (setq flycheck-keymap-prefix (kbd "H-x e"))
  (define-key flycheck-mode-map flycheck-keymap-prefix
    flycheck-command-map))

(provide 'ana-processors)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-processors.el ends here
