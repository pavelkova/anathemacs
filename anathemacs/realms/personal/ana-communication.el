;;; ana-communication.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; email
(require 'mu4e)
(require 'mu4e-context)
(require 'smtpmail)

(load-file user-mu4e-file) ;; where contexts are defined

(setq mu4e-completing-read-function 'ivy-completing-read
      mu4e-compose-signature-auto-include nil
      mu4e-attachment-dir "~/Downloads"
      mu4e-get-mail-command "mbsync -aV"
      mu4e-headers-include-related t
      mu4e-headers-skip-duplicates t
      mu4e-hide-index-messages t
      mu4e-maildir "~/.local/mail"
      mu4e-update-interval 300
      mu4e-use-fancy-chars t
      mail-user-agent 'mu4e-user-agent
      mu4e-view-prefer-html t
      mu4e-view-show-addresses t
      mu4e-view-show-images t
      mu4e-split-view 'horizontal
      smtpmail-debug-info t
      smtpmail-send-mail-function 'smtpmail-send-it)

(use-package mu4e-alert
  :init
  (mu4e-alert-enable-notifications)
  (mu4e-alert-enable-mode-line-display)
  :config
  (setq mu4e-alert-set-default-style 'libnotify))

(use-package mu4e-conversation
  :after mu4e
  :config
  (global-mu4e-conversation-mode))

(hs-leader-def
  "m" 'mu4e)

;; social media

;; telegram
;; (use-package telega)

;; twitter
(use-package twittering-mode
  :general
  (hs-leader-def
    "M-m t" 'twit)
  :config
  (setq twittering-timeline-header "twittering \n\n"
        twittering-use-icon-storage t
        twittering-icon-storage-file "~/.emacs.d/user/.twittering-mode-icons.gz"
        twittering-fill-column 80)
  (general-define-key
   :keymaps 'twittering-mode-map
   "e" 'eww)) ;; open link at cursor with eww

;; reddit
(use-package md4rd
  :general
  (hs-leader-def
    "M-m r" 'md4rd)
  :config
  (setq md4rd-subs-active '(news politics emacs linux femalefashionadvice sorceryofthespectacle askhistorians historyofideas)))

(provide 'ana-communication)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-communication.el ends here
