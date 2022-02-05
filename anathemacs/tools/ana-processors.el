;;; ana-processors.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

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

(use-package helm-company
  :after company
  :config
  (general-define-key :keymaps '(company-mode-map company-active-map)
            "C-:" . helm-company))

                                        ; errors and linting

;; (use-package flycheck
;;   :delight flycheck-mode
;;   :config
;;   (global-flycheck-mode)
;;   (define-key flycheck-mode-map flycheck-keymap-prefix nil)
;;   (setq flycheck-keymap-prefix (kbd "H-a e"))
;;   (define-key flycheck-mode-map flycheck-keymap-prefix
;;     flycheck-command-map))

;; conversion
(use-package ox-pandoc)

(use-package pandoc-mode
  :demand t)

(provide 'ana-processors)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-processors.el ends here
