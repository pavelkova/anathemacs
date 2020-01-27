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
        persp-hook-up-emacs-buffer-completion t)
  ;; Integrate IVY
  (with-eval-after-load "ivy"
    (add-hook 'ivy-ignore-buffers
              #'(lambda (b)
                  (when persp-mode
                    (let ((persp (get-current-persp)))
                      (if persp
                          (not (persp-contain-buffer-p b persp))
                        nil)))))

    (setq ivy-sort-functions-alist
          (append ivy-sort-functions-alist
                  '((persp-kill-buffer   . nil)
                    (persp-remove-buffer . nil)
                    (persp-add-buffer    . nil)
                    (persp-switch        . nil)
                    (persp-window-switch . nil)
                    (persp-frame-switch  . nil)))))
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
  :init
  (persp-mode-projectile-bridge-mode)
  :config
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

;; (use-package perspective
;;   :init
;;   (persp-mode)
;;   :general
;;   (ha-leader-def
;;     ;; manually binding keymap for now
;;     "ps"     'persp-switch
;;     "pk"     'persp-remove-buffer
;;     "pc"     'persp-kill
;;     "pr"     'persp-rename
;;     "pa"     'persp-add-buffer
;;     "pA"     'persp-set-buffer
;;     "pi"     'persp-import
;;     "pn"     'persp-next
;;     "pp"     'persp-prev
;;     "p C-s"  'persp-state-save
;;     "p C-l"  'persp-state-load
;;     ;; custom
;;     "pb"     'persp-counsel-switch-buffer
;;     "p C-b"  'persp-ibuffer
;;     "p M-s"  'projectile-persp-switch-project)
;;   :config
;;   (setq persp-mode-prefix-key [16777313 112]
;;         persp-state-default-file "~/.emacs.d/perspective-auto-save")
;;   (add-hook 'kill-emacs-hook #'persp-state-save))

;; (use-package persp-projectile
;;   :after persp-mode)

;; (use-package nameframe
;;   :general
;;   (ha-leader-def
;;     "pS" 'nameframe-switch-frame
;;     "pC" 'nameframe-create-frame)
;;   :config
;;   (setq nameframe-projectile-mode t
;;         nameframe-perspective-mode t))

;; (use-package nameframe-projectile
;;   :after nameframe)

;; (use-package nameframe-perspective
;;   :after nameframe)

;; FRAMES
(ha-leader-def
  "C-n" 'find-file-other-frame)

(provide 'ana-layout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-layout.el ends here
