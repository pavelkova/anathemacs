000;;; ana-js-react.el --- Package configurations for working with React.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package foreman-mode
  :general
  (hd-leader-def
    "f"  '(:ignore t :which-key "foreman")
    "f." 'foreman-view-buffer
    "fc" 'foreman-clear
    "fd" 'foreman-stop
    "fe" 'foreman-edit-env
    "fE" 'foreman-env-save
    "fk" 'foreman-kill-buffer
    "fK" 'foreman-kill-proc
    "fn" 'foreman-next-line
    "fp" 'foreman-previous-line
    "fr" 'foreman-restart
    "fR" 'foreman-restart-proc
    "ft" 'foreman-tasks
    "fu" 'foreman-start
    "fU" 'foreman-start-proc))

(use-package npm-mode
  :general
  (hd-leader-def
    "n"  '(:ignore t :which-key "npm")
    "nn" 'npm-mode-npm-init
    "ni" 'npm-mode-npm-install
    "ns" 'npm-mode-npm-install-save
    "nd" 'npm-mode-npm-install-save-dev
    "nu" 'npm-mode-npm-uninstall
    "nl" 'npm-mode-npm-list
    "nr" 'npm-mode-npm-run
    "nv" 'npm-mode-visit-project-file))

(use-package react-snippets
  :hook web-mode)

(use-package yarn-mode)

(provide 'ana-js-react)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js-react.el ends here
