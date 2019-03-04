;;; ana-python-django.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package django-commands
  :hook python-mode)

(use-package djangonaut
  :init
  (global-djangonaut-mode)
  :config
  (minor-leader-def
    :keymaps 'djangonaut-mode-map
    "'" '(:ignore t :which-key "Djangonaut")
    "'A" 'pythonic-activate))

;; (use-package pony-mode
;;   :defer t
;;   :init
;;   (minor-leader-def
;;     :keymaps 'python-mode-map
;;     "j" '(:ignore t :which-key "django")
;;     "jF" '(:ignore t :which-key "fabric")
;;     "jFf" 'pony-fabric
;;     "jFd" 'pony-fabric-deploy
;;     ; d*j*ango *f*iles
;;     "jf" '(:ignore t :which-key "files")
;;     "jfs" 'pony-goto-settings
;;     "jfc" 'pony-setting
;;     "jft" 'pony-goto-template
;;     "jfr" 'pony-resolve
;;     "ji" '(:ignore t :which-key "interactive")
;;     "jid" 'pony-db-shell
;;     "jis" 'pony-shell
;;     "jm" 'pony-manage
;;     "js" '(:ignore t :which-key "server")
;;     "jsd" 'pony-stopserver
;;     "jso" 'pony-browser
;;     "jsr" 'pony-restart-server
;;     "jsu" 'pony-runserver
;;     "jst" 'pony-temp-server
;;     "jS" '(:ignore t :which-key "south/sync")
;;     "jSc" 'pony-south-convert
;;     "jSh" 'pony-south-schemamigration
;;     "jSi" 'pony-south-initial
;;     "jSm" 'pony-south-migrate
;;     "jSs" 'pony-syncdb
;;     "jt" '(:ignore t :which-key "test")
;;     "jtd" 'pony-test-down
;;     "jte" 'pony-test-goto-err
;;     "jto" 'pony-test-open
;;     "jtt" 'pony-test
;;     "jtu" 'pony-test-up))

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
