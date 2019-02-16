;;; ana-navigation.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(eval-when-compile
  (require 'ana-base))

(use-package all-the-icons-dired
  :hook
  (dired-mode))

(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(use-package neotree
  :defer t
  :config
  (setq neo-window-width 32
        neo-theme 'icons
        neo-create-file-auto-open t
        neo-banner-message "Press ? for neotree help"
        neo-show-updir-line nil
        neo-mode-line-type neotree
        neo-smart-open t
        neo-persist-show nil
        neo-show-hidden-files t
        neo-auto-indent-point t
        neo-modern-sidebar t
        projectile-switch-project-action 'neotree-projectile-actionx3)
  ;; (general-define-key
  ;;  :keymaps 'neotree-mode-map
  ;;  "RET" 'neotree-enter)
  (cc-leader-def
   "C-p" 'neotree-project-dir)
  )


(provide 'ana-navigation)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-navigationel ends here
