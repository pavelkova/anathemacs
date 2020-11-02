;;; ana-ruby.el --- Package configurations for working with Ruby.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package inf-ruby
  :hook (enh-ruby-mode . inf-ruby-minor-mode)
  ;; none of the ruby modes have maps?
  ;; :general
  ;; (:keymaps 'ruby-mode
  ;;           (hd-leader-def
  ;;             ":" 'inf-ruby
  ;;             "C" 'inf-ruby-console-auto
  ;;             "s" 'ruby-switch-to-inf
  ;;             "d" 'ruby-send-definition
  ;;             "D" 'ruby-send-definition-and-go
  ;;             "r" 'ruby-send-region
  ;;             "R" 'ruby-send-region-and-go))
  )

(use-package enh-ruby-mode
  :hook robe-mode
  :config
  (remove-hook 'enh-ruby-mode-hook 'erm-define-faces))

(use-package robe
  :hook (ruby-mode . robe-mode)
  :config
  (eval-after-load 'company
    '(push 'company-robe company-backends)))

(use-package rspec-mode
  :config
  (eval-after-load 'rspec-mode
    '(rspec-install-snippets)))

(defun ruby-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Ruby"
                                  "Ruby on Rails")))

(add-hook 'ruby-mode-hook 'ruby-doc)

;; RAILS

;; (use-package projectile-rails
;;   :bind-keymap
;;   ("H-d R" . projectile-rails-command-map))

(provide 'ana-ruby)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ruby.el ends here
