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
    "o" '(:ignore t :which-key "pony")
    "oF" '(:ignore t :which-key "fabric")
    "oFf" 'pony-fabric
    "oFd" 'pony-fabric-deploy
    "of" '(:ignore t :which-key "files")
    "ofs" 'pony-goto-settings
    "ofc" 'pony-setting
    "oft" 'pony-goto-template
    "ofr" 'pony-resolve
    "oi" '(:ignore t :which-key "interactive")
    "oid" 'pony-db-shell
    "ois" 'pony-shell
    "om" 'pony-manage
    "os" '(:ignore t :which-key "server")
    "osd" 'pony-stopserver
    "oso" 'pony-browser
    "osr" 'pony-restart-server
    "osu" 'pony-runserver
    "ost" 'pony-temp-server
    "oS" '(:ignore t :which-key "south/sync")
    "oSc" 'pony-south-convert
    "oSh" 'pony-south-schemamigration
    "oSi" 'pony-south-initial
    "oSm" 'pony-south-migrate
    "oSs" 'pony-syncdb
    "ot" '(:ignore t :which-key "test")
    "otd" 'pony-test-down
    "ote" 'pony-test-goto-err
    "oto" 'pony-test-open
    "ott" 'pony-test
    "otu" 'pony-test-up
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
