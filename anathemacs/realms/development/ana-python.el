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
            "t"  '(:ignore t :which-key "pytest")
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
            "j"  '(:ignore t :which-key "django")
            "j:" 'django-commands-shell
            "j." 'django-commands-server
            "j?" 'django-commands-test
            "j," 'django-commands-restart))

;; in .dir-locals.el
;; ((nil . ((django-commands-python-executable . "~/.virtualenvs/virtualenvname/bin/python")
;;          (django-commands-settings-module . "settings.module.name"))))

(use-package djangonaut
  :general
  (:keymaps 'python-mode-map
            :prefix "H-d"
            "ja" 'djangonaut-find-admin-class
            "jc" 'djangonaut-find-management-command
            "jd" 'djangonaut-find-drf-permission
            "jD" 'djangonaut-find-drf-serializer
            "jf" 'djangonaut-find-static-file
            "jg" 'djangonaut-find-migration
            "ji" 'djangonaut-dired-installed-apps
            "jm" 'djangonaut-find-model
            "jM" 'djangonaut-find-model-manager
            "jo" 'djangonaut-find-form
            "jp" 'djangonaut-find-template
            "jq" 'djangonaut-find-sql-function
            "jr" 'djangonaut-find-signal-receiver
            "js" 'djangonaut-find-settings-module
            "jt" 'djangonaut-find-template-filter
            "jT" 'djangonaut-find-template-tag
            "ju" 'djangonaut-find-url-module
            "jv" 'djangonaut-find-view
            "jw" 'djangonaut-find-middleware
            "jW" 'djangonaut-find-widget)
  :config
  (global-djangonaut-mode))


(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
