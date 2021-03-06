;;; ana-ts.el --- Package configurations for working with TypeScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:



(use-package tide
  :mode (("\\.jsx?\\'" . tide-setup)
         ("\\.jsx?\\'" . tide-hl-identifier-mode)
         ("\\.tsx?\\'" . tide-setup)
         ("\\.tsx?\\'" . tide-hl-identifier-mode))
  ;; :hook (before-save . tide-format-before-save)
       ;((js-mode typescript-mode) . tide-setup)
       ;((js-mode typescript-mode) . tide-hl-identifier-mode)
  :general
  (hd-leader-def
    :keymaps 'tide-mode-map
    "t"  '(:ignore t :which-key "tide")
    "tR" 'tide-restart-server
    "tf" 'tide-format
    "t@" 'tide-rename-symbol
    "to" 'tide-organize-imports)
  :config
  (setq tide-always-show-documentation t
        tide-completion-detailed t
        tide-completion-enable-autoimport-suggestions t
        tide-enable-xref t
        tide-format-options '(:indentSize 4
                              :placeOpenBraceOnNewLineForFunctions nil)
        tide-user-preferences '(:includeCompletionsForModuleExports t))
  (flycheck-add-mode 'javascript-eslint
                     'web-mode)
  (flycheck-add-next-checker 'javascript-eslint
                             'jsx-tide
                             'append))

(use-package ts-comint
  :general
  (:keymaps 'typescript-mode-map
            (hd-leader-def
              "e" 'ts-send-last-sexp
              "E" 'ts-send-last-sexp-and-go
              "b" 'ts-send-buffer
              "B" 'ts-send-buffer-and-go
              "F" 'ts-load-file-and-go
              ":" 'run-ts)))

(use-package typescript-mode
  :mode ("\\.tsx?\\'"   . web-mode))

(provide 'ana-ts)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ts.el ends here
