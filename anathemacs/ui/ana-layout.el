;;; ana-layout.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

(use-package persp-mode
  :init
  (persp-mode 1)
  :bind-keymap
  ("H-a p" . persp-key-map)
  :config
  (setq persp-autokill-buffer-on-remove 'kill-weak
        persp-nil-name "default"
        persp-nil-hidden t)
  ;; Integrate IVY
  ;; (with-eval-after-load "ivy"
  ;;   (add-hook 'ivy-ignore-buffers
  ;;             #'(lambda (b)
  ;;                 (when persp-mode
  ;;                   (let ((persp (get-current-persp)))
  ;;                     (if persp
  ;;                         (not (persp-contain-buffer-p b persp))
  ;;                       nil)))))

  ;;   (setq ivy-sort-functions-alist
  ;;         (append ivy-sort-functions-alist
  ;;                 '((persp-kill-buffer   . nil)
  ;;                   (persp-remove-buffer . nil)
  ;;                   (persp-add-buffer    . nil)
  ;;                   (persp-switch        . nil)
  ;;                   (persp-window-switch . nil)
  ;;                   (persp-frame-switch  . nil)))))
  ;; Integrate bs-show
  (global-set-key (kbd "C-x b") #'(lambda (arg)
                                  (interactive "P")
                                  (with-persp-buffer-list () (bs-show arg))))
  ;; Integrate ibuffer
  (global-set-key (kbd "C-x C-b") #'(lambda (arg)
                                      (interactive "P")
                                      (with-persp-buffer-list () (ibuffer arg))))
  )

(use-package persp-mode-projectile-bridge
  :after (persp-mode projectile)
  :hook ((persp-mode projectile-mode) . persp-mode-projectile-bridge-mode)
  :init
  (persp-mode-projectile-bridge-mode 1)
  :config
  (setq persp-mode-projectile-bridge-persp-name-prefix "⧉")
  (with-eval-after-load "persp-mode-projectile-bridge-autoloads"
    (add-hook 'persp-mode-projectile-bridge-mode-hook
              #'(lambda ()
                  (if persp-mode-projectile-bridge-mode
                      (persp-mode-projectile-bridge-find-perspectives-for-all-buffers)
                    (persp-mode-projectile-bridge-kill-perspectives))))
    (add-hook 'after-init-hook
              #'(lambda ()
                  (persp-mode-projectile-bridge-mode 1))
              t)))

(use-package treemacs-persp
  :after treemacs persp-mode
  :config (treemacs-set-scope-type 'Perspectives))

;; tab bar
(general-define-key
 "<f9>" 'tab-bar-mode)

(provide 'ana-layout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-layout.el ends here
