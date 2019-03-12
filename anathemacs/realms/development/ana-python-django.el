;;; ana-python-django.el --- Package configurations for working with Django.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package django-mode)

(use-package djangonaut
  :general
  (hd-leader-def
    "d"  '(:ignore t :which-key "djangonaut")
    "d." 'pythonic-activate
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

(use-package pony-mode
  :general
  (hd-leader-def
    "p" '(:ignore t :which-key "pony")
    "pF" '(:ignore t :which-key "fabric")
    "pFf" 'pony-fabric
    "pFd" 'pony-fabric-deploy
    "pf" '(:ignore t :which-key "files")
    "pfs" 'pony-goto-settings
    "pfc" 'pony-setting
    "pft" 'pony-goto-template
    "pfr" 'pony-resolve
    "pi" '(:ignore t :which-key "interactive")
    "pid" 'pony-db-shell
    "pis" 'pony-shell
    "pm" 'pony-manage
    "ps" '(:ignore t :which-key "server")
    "psd" 'pony-stopserver
    "pso" 'pony-browser
    "psr" 'pony-restart-server
    "psu" 'pony-runserver
    "pst" 'pony-temp-server
    "pS" '(:ignore t :which-key "south/sync")
    "pSc" 'pony-south-convert
    "pSh" 'pony-south-schemamigration
    "pSi" 'pony-south-initial
    "pSm" 'pony-south-migrate
    "pSs" 'pony-syncdb
    "pt" '(:ignore t :which-key "test")
    "ptd" 'pony-test-down
    "pte" 'pony-test-goto-err
    "pto" 'pony-test-open
    "ptt" 'pony-test
    "ptu" 'pony-test-up
    ))

;; Configuration options per project are available via .dir-locals.el

;; The file should look something like this:

;; ;; Pony mode config for the megacorp project
;; ((nil . ;; This applies these settings regardless of major mode

;;   ((pony-settings (make-pony-project
;;                    :python "/home/david/virtualenvs/megacorp/production/bin/python"
;;                    :pythonpath "/home/david/megacorp/libs/projectzero"
;;                    :settings "local_settings_file"
;;                    :appsdir "testproject/apps/")
;;                   ))))

(provide 'ana-python-django)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-python-django.el ends here
