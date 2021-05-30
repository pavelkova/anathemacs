;;; ana-js.el --- Package configurations for working with JavaScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package js2-mode
  :general
  (:keymaps 'js2-mode-map
            (general-define-key
             "M-." nil))
  :commands js2-line-break
  :config
  (setq js-chain-indent t
        js2-highlight-level 3
        js2-highlight-external-variables t
        js2-idle-timer-delay 0.1
        js2-missing-semi-one-line-override t
        js2-mode-show-parse-errors nil
        js2-mode-show-strict-warnings nil
        js2-skip-preprocessor-directives t
        js2-strict-missing-semi-warning nil
        js2-strict-trailing-comma-warning nil))

(use-package nodejs-repl
  :general
  (:keymaps 'web-mode-map
            :prefix "H-d"
              "E" 'nodejs-repl-send-last-expression
              "L" 'nodejs-repl-send-line
              "R" 'nodejs-repl-send-region
              "B" 'nodejs-repl-send-buffer
              "F" 'nodejs-repl-load-file
              ":" 'nodejs-repl-switch-to-repl))

;; (use-package xref-js2
;;   :hook (js2-mode . (lambda ()
;;                       (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))

(use-package js-react-redux-yasnippets
  :config
  (setq js-react-redux-yasnippets-want-semicolon nil))

(use-package rjsx-mode)

(use-package yarn-mode)

;; DOCSETS
(defun js-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("JavaScript"
                                  "jQuery"
                                  "NodeJS"
                                  "React"
                                  "TypeScript"
                                  "VueJS")))

(add-hook 'web-mode-hook 'js-doc)

(provide 'ana-js)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-js.el ends here
