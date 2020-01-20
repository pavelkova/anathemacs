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

(use-package npm-mode
  :general
  (hd-leader-def
    "nn" 'npm-mode-npm-init
    "ni" 'npm-mode-npm-install
    "ns" 'npm-mode-npm-install-save
    "nd" 'npm-mode-npm-install-save-dev
    "nu" 'npm-mode-npm-uninstall
    "nl" 'npm-mode-npm-list
    "nr" 'npm-mode-npm-run
    "nv" 'npm-mode-visit-project-file))

(use-package yarn-mode)

;; REACT

;; (use-package react-snippets)

(use-package js-react-redux-yasnippets
  :config
  (setq js-react-redux-yasnippets-want-semicolon nil))

;; DON'T NEED IN EMACS 27

;; (use-package js2-mode
;;   :hook (js-mode . js2-minor-mode))

(use-package rjsx-mode
  :mode ("\\.jsx?$" . rjsx-mode)
  :config (setq js-indent-level 2
                js2-strict-missing-semi-warning nil))


;; TYPESCRIPT
;; (defun activate-tide-mode ()
;;   "Use hl-identifier-mode only on js or ts buffers."
;;   (when (and (stringp buffer-file-name)
;;              (string-match "\\.[tj]sx?\\'" buffer-file-name))
;;     (tide-setup)
;;     (tide-hl-identifier-mode)))

;; (use-package tide
;;   :hook ((web-mode . activate-tide-mode)
;;          (before-save . tide-format-before-save))
;;   :config
;;   (setq tide-format-options '()))


;; VUE

;; (use-package vue-mode)

;; (use-package vue-html-mode)

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
