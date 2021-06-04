;;; ana-ts.el --- Package configurations for working with TypeScript.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:



(use-package tide
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save))
  :general
  (:keymaps 'tide-mode-map
            :prefix "H-d"
            ;; "t"  '(:ignore t :which-key "+tide")
            "R" 'tide-restart-server
            "F" 'tide-format
            "@" 'tide-rename-symbol
            "o" 'tide-organize-imports)
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
            :prefix "H-d"
            "e" 'ts-send-last-sexp
            "E" 'ts-send-last-sexp-and-go
            "b" 'ts-send-buffer
            "B" 'ts-send-buffer-and-go
            "f" 'ts-load-file-and-go
            ":" 'run-ts))

(use-package typescript-mode
  :mode (("\\.tsx?\\'" . typescript-mode)))

(provide 'ana-ts)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ts.el ends here
