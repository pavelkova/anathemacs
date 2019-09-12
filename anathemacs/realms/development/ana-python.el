;;; ana-python.el --- Package configurations for working with Python.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; (use-package company-jedi
;;     :init
;;     (defun enable-jedi()
;;       (setq-local company-backends
;;                   (append '(company-jedi) company-backends)))
;;     (with-eval-after-load 'company
;;       (add-hook 'python-mode-hook 'enable-jedi)))

;; (use-package elpy
;;   :hook python-mode
;;   :config
;;   (elpy-enable)
;;   (setq elpy-rpc-backend "jedi"))

(use-package pippel
  :general
  (hd-leader-def
    "pl" 'pippel-list-packages))

(use-package pip-requirements
  :mode "\\requirements.txt\\'")

(use-package pyvenv
  :hook (python-mode . pyvenv-tracking-mode)
  :general
  (hd-leader-def
    "pa" 'pyvenv-activate
    "pc" 'pyvenv-create
    "pd" 'pyvenv-deactivate
    "ph" 'pyvenv-workon-history
    "ps" 'pyvenv-exec-shell
    "pw" 'pyvenv-workon))

;; in .dir-locals.el
;; ((python-mode . ((pyvenv-workon . "~/PATH/venv")
;;                  (subdirs . nil))))


;; DJANGO

(use-package django-commands
  :general
  (hd-leader-def
    "d>" 'django-commands-shell
    "d." 'django-commands-server
    "d<" 'django-commands-test
    "d," 'django-commands-restart))

;; in .dir-locals.el
;; ((nil . ((django-commands-python-executable . "~/.virtualenvs/virtualenvname/bin/python")
;;          (django-commands-settings-module . "settings.module.name"))))

(use-package djangonaut
  :general
  (hd-leader-def
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

;; In .dir-locals.el:
;; ((nil
;; (python-shell-process-environment . ("DJANGO_SETTINGS_MODULE=project.settings"))
;; (python-shell-extra-pythonpaths . ("/path/to/the/project/"))
;; (python-shell-virtualenv-root . "/path/to/your/venv/")))

(provide 'ana-python)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python.el ends here
