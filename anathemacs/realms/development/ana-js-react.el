;;; ana-js-react.el --- Package configurations for working with React.

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
    "fu" 'foreman-start
    "fe" 'foreman-edit-env
    "fE" 'foreman-env-save
    "fr" 'foreman-restart
    "ft" 'foreman-tasks
    "fu" 'foreman-start))

(use-package npm-mode)

(use-package react-snippets
  :hook web-mode)

(use-package yarn-mode)

(provide 'ana-js-react)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js-react.el ends here
