
;;; init.el
;; Author: e.g. pavelka
;; URL: https://github.com/egpavelka/anathemacs
;; Version: 0.1.0
;; Keywords: emacs

;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;

;;; Commentary:
;;

;;; Code:

(push (expand-file-name "anathemacs" user-emacs-directory) load-path)

(let ((default-directory  "~/.emacs.d/anathemacs"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(setq package-enable-at-startup nil)

(setq package-archives
      '(("org"       . "https://orgmode.org/elpa/")
        ("gnu"       . "https://elpa.gnu.org/packages/")
        ("melpa"     . "https://melpa.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(load-theme 'anathemacs t)

;; init
(require 'ana-constants)
(require 'ana-keybindings)
(require 'ana-base)
;;environments
;; org
(require 'ana-org-base)
(require 'ana-org-ui)
(require 'ana-org-keywords)
(require 'ana-org-tools)
(require 'ana-org-templates)
;; tools
(require 'ana-completion)
;; ui
(require 'ana-ui-base)
(require 'ana-editing)
(require 'ana-navigation)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a179bbef5cffb1642f3585de1ffba5ae5afe527fc1f21100cf025fcd3a680135" "5db6390cc492048fc05e45e58157be3882165652e0bf48e5f73467c353a6e3dc" default))
 '(package-selected-packages
   '(helm-make which-key general wgrep use-package smex smartparens pdf-tools org-download neotree multiple-cursors magit ivy-hydra helm-company flx eyebrowse define-word dashboard counsel-projectile better-defaults auto-yasnippet auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
