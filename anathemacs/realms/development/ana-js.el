;;; ana-js.el --- Package configurations for working with JavaScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package foreman-mode
  :general
  (hd-leader-def
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


(use-package yarn-mode)

;; REACT

(use-package js-react-redux-yasnippets
  :config
  (setq js-react-redux-yasnippets-want-semicolon nil))

(use-package rjsx-mode
  :mode ("\\.jsx?$" . rjsx-mode)
  :config (setq js-indent-level 2
                js2-strict-missing-semi-warning nil))


;; VUE

;; (use-package vue-mode)

;; (use-package vue-html-mode)

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
