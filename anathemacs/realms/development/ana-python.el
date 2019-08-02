;;; ana-python.el --- Package configurations for working with Python.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; (use-package anaconda-mode
;;   :hook (python-mode . (anaconda-mode anaconda-eldoc-mode))
;;   :general
;;   (hd-leader-def
;;    "a." 'anaconda-mode-complete
;;    "aa" 'anaconda-mode-find-assignments
;;    "aA" 'anaconda-mode-find-assignments-other-window
;;    "ad" 'anaconda-mode-find-definitions
;;    "aD" 'anaconda-mode-find-definitions-other-window
;;    "ar" 'anaconda-mode-find-references
;;    "aR" 'anaconda-mode-find-references-other-window
;;    "a?" 'anaconda-mode-show-doc))

;; (use-package company-anaconda
;;   :after company
;;   :hook (python-mode . (set-local-company-backend company-anaconda)))

;; (use-package cython-mode)

;; ;; (use-package live-py-mode)

;; (use-package pippel
;;   :general
;;   (hd-leader-def
;;     "pl" 'pippel-list-packages))

;; (use-package pip-requirements
;;   :mode "\\requirements.txt\\'")

;; (use-package pyvenv
;;   :hook (python-mode . pyvenv-mode)
;;   :general
;;   (hd-leader-def
;;     "pa" 'pyvenv-activate))

;; (use-package pytest)

(use-package company-jedi
    :init
    (defun enable-jedi()
      (setq-local company-backends
                  (append '(company-jedi) company-backends)))
    (with-eval-after-load 'company
      (add-hook 'python-mode-hook 'enable-jedi)))

(use-package elpy
  :init
  (elpy-enable)
  (add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
  :custom
  (elpy-rpc-backend "jedi"))

(use-package python
  :ensure nil
  :mode ("\\.py" . python-mode)
  :config
  (setq python-indent-offset 4)
  (elpy-enable))

(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
