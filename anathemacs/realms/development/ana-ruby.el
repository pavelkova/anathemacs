;;; ana-ruby.el --- Package configurations for working with Ruby.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; (use-package bundler :defer t)
;; (use-package chruby :defer t)
(use-package enh-ruby-mode :defer t)
;; (use-package minitest :defer t)
;; (use-package popwin :defer t)
;; (use-package rbenv :defer t)
(use-package robe :defer t)
;; (use-package rspec-mode :defer t)
(use-package rubocop :defer t)
;; (use-package ruby-mode :defer t)
;; (use-package ruby-test-mode :defer t)
;; (use-package ruby-tools :defer t)
(use-package rvm :defer t)
;; (use-package rake :defer t)

;; RAILS

(use-package projectile-rails
  :bind-keymap
  ("H-d r" . projectile-rails-command-map))

(provide 'ana-ruby)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ruby.el ends here
