;;; ana-ruby.el --- Package configurations for working with Ruby.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(use-package inf-ruby
  :hook (enh-ruby-mode . inf-ruby-minor-mode)
  :general
  (hd-leader-def
    "rc" 'inf-ruby
    "rC" 'inf-ruby-console-auto
    "rs" 'ruby-switch-to-inf
    "rd" 'ruby-send-definition
    "rD" 'ruby-send-definition-and-go
    "rr" 'ruby-send-region
    "rR" 'ruby-send-region-and-go))

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

(use-package projectile-rails
  :bind-keymap
  ("H-d R" . projectile-rails-command-map))

(provide 'ana-ruby)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ruby.el ends here
