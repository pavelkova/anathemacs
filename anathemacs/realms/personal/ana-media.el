;;; ana-media.el ---

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
(load-file user-mu4e-file)

(setq mu4e-completing-read-function 'ivy-completing-read
      mu4e-compose-signature-auto-include nil
      mu4e-attachment-dir "~/Downloads"
      mu4e-get-mail-command "offlineimap"
      mu4e-maildir "~/.local/mail"
      mu4e-update-interval 300
      mu4e-use-fancy-chars t
      mail-user-agent 'mu4e-user-agent
      mu4e-view-show-addresses t
      mu4e-view-show-images t
      smtpmail-debug-info t
      smtpmail-send-mail-function 'smtpmail-send-it)

(use-package mu4e-conversation
  :after mu4e
  :config
  (global-mu4e-conversation-mode))

(hs-leader-def
  "m" 'mu4e)

;; social media

;; twitter
(use-package twittering-mode
  :general
  (hs-leader-def
    "Mt" 'twit)
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
    "Mr" 'md4rd)
  :config
  (setq md4rd-subs-active '(news politics emacs linux femalefashionadvice sorceryofthespectacle askhistorians historyofideas)))

;; music
(use-package emms
  :general
  (hs-leader-def
    "Mb" 'emms-browser)
  :config
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory user-music-dir)
  (setq emms-playlist-buffer-name "*música*")
  (setq emms-info-asynchronously t)
 ;; (require 'emms-info-libtag)
 ;; (setq emms-info-functions '(emms-info-libtag))
  (require 'emms-mode-line)
  (emms-mode-line 1)
  (require 'emms-playing-time)
  (emms-playing-time 1))

(provide 'ana-media)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-media.el ends here
