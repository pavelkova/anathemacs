;;; ana-ruby-rails.el --- Package configurations for working with Rails.

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package projectile-rails
  :bind-keymap
  ("H-d r" . projectile-rails-command-map))

(provide 'ana-ruby-rails)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-ruby-rails.el ends here
