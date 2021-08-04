;;; ana-python.el --- Package configurations for working with Python.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package python-mode
  :config
  (setq indent-tabs-mode nil
        py-indent-tabs-mode nil
        python-indent-offset 4
        tab-width 4))

(use-package live-py-mode
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "l" 'py-live-mode))

(use-package lsp-pyright
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))


(use-package pippel
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "L" 'pippel-list-packages))

(use-package pip-requirements
  :mode "\\requirements.txt\\'")

(use-package python-black
  :after python)

(use-package pytest
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "t"  '(:ignore t :which-key "+pytest")
            "ta" 'pytest-all
            "ta" 'pytest-module
            "ta" 'pytest-one
            "tc" 'pytest-again
            "td" 'pytest-directory
            "tA" 'pytest-pdb-all
            "tM" 'pytest-pdb-module
            "t!" 'pytest-pdb-one))

(defun python-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Django"
                                  "Flask"
                                  "NumPy"
                                  "SciPy"
                                  "SQLAlchemy"
                                  "Pandas"
                                  ;; "Python 3"
                                  )))

(add-hook 'python-mode-hook 'python-doc)

;; DJANGO

(use-package django-commands
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "d"  '(:ignore t :which-key "+django")
            "d:" 'django-commands-shell
            "d." 'django-commands-server
            "d?" 'django-commands-test
            "d," 'django-commands-restart))

;; in .dir-locals.el
;; ((nil . ((django-commands-python-executable . "~/.virtualenvs/virtualenvname/bin/python")
;;          (django-commands-settings-module . "settings.module.name"))))

(use-package djangonaut
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "da" 'djangonaut-find-admin-class
            "dc" 'djangonaut-find-management-command
            "dd" 'djangonaut-find-drf-permission
            "dD" 'djangonaut-find-drf-serializer
            "df" 'djangonaut-find-static-file
            "dg" 'djangonaut-find-migration
            "di" 'djangonaut-dired-installed-apps
            "dm" 'djangonaut-find-model
            "dM" 'djangonaut-find-model-manager
            "do" 'djangonaut-find-form
            "dp" 'djangonaut-find-template
            "dq" 'djangonaut-find-sql-function
            "dr" 'djangonaut-find-signal-receiver
            "ds" 'djangonaut-find-settings-module
            "dt" 'djangonaut-find-template-filter
            "dT" 'djangonaut-find-template-tag
            "du" 'djangonaut-find-url-module
            "dv" 'djangonaut-find-view
            "dw" 'djangonaut-find-middleware
            "dW" 'djangonaut-find-widget)
  :config
  (global-djangonaut-mode))


(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
