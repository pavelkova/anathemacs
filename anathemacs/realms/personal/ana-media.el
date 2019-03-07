;;; ana-media.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:
;; email
(require 'notmuch)

;; social media
;; (use-package twittering-mode)

(use-package md4rd
  :defer t
  :config
  (setq md4rd-subs-active '(news politics emacs linux femalefashionadvice sorceryofthespectacle askhistorians historyofideas)))

;; music

(use-package emms
  :defer t
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

(hs-leader-def
  "mb" 'emms-browser)

(use-package libmpdee)

(use-package mingus
  :after libmpdee)

(provide 'ana-media)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-media.el ends here
