;;; ana-server.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; DOCKER
(use-package docker
  :general
  (hd-leader-def
    "d"   'docker))

(use-package docker-compose-mode)

(use-package dockerfile-mode
  :mode ("Dockerfile\\'" . dockerfile-mode))

(use-package docker-tramp)

(use-package lsp-docker
  :config
  (setq lsp-docker-client-packages
        '(lsp-css lsp-clients lsp-bash lsp-go lsp-pyls lsp-html lsp-typescript
                  lsp-terraform lsp-clangd)
        lsp-docker-client-configs
        '((:server-id bash-ls :docker-server-id bashls-docker :server-command "bash-language-server start")
          (:server-id clangd :docker-server-id clangd-docker :server-command "clangd")
          (:server-id css-ls :docker-server-id cssls-docker :server-command "css-languageserver --stdio")
          (:server-id dockerfile-ls :docker-server-id dockerfilels-docker :server-command "docker-langserver --stdio")
          (:server-id gopls :docker-server-id gopls-docker :server-command "gopls")
          (:server-id html-ls :docker-server-id htmls-docker :server-command "html-languageserver --stdio")
          (:server-id pyls :docker-server-id pyls-docker :server-command "pyls")
          (:server-id ts-ls :docker-server-id tsls-docker :server-command "typescript-language-server --stdio")))
  (lsp-docker-init-clients
   ;; :path-mappings '(("path-to-projects-you-want-to-use" . "/projects"))
   :client-packages lsp-docker-client-packages
   :client-configs lsp-docker-client-configs))

;; NGINX
(use-package nginx-mode)

(defun nginx-doc ()
  (interactive)
  (setq-local dash-docs-docsets '("Nginx")))

(add-hook 'nginx-mode-hook 'nginx-doc)

(use-package company-nginx
  :hook (nginx-mode . (set-local-company-backend company-nginx)))

;; REMOTE ACCESS
(use-package helm-tramp
  :after helm
  :general
  (ha-leader-def
    "C-r" 'helm-tramp)
  :config
  (setq tramp-default-method "ssh")
  (add-hook 'helm-tramp-pre-command-hook '(lambda () (global-aggressive-indent-mode 0)
				            (projectile-mode 0)
				            ; (editorconfig-mode 0)
                                            ))
  (add-hook 'helm-tramp-quit-hook '(lambda () (global-aggressive-indent-mode 1)
			             (projectile-mode 1)
			             ; (editorconfig-mode 1)
                                     )))

(use-package tramp-term)

(use-package ssh-config-mode)

(provide 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-server.el ends here
