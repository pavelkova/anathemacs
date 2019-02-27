
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
(require 'ana-org-base)
;; tools
(require 'ana-archiving)
(require 'ana-completion)
(require 'ana-exporting)
(require 'ana-processors)
(require 'ana-version-control)
;; ui
(require 'ana-ui-base)
(require 'ana-modeline)
(require 'ana-editing)
(require 'ana-layout)
(require 'ana-navigation)
(require 'ligature-support)
(require 'rogue-margins)
;; REALMS
;; development
;;;; frameworks
(require 'ana-django)
;; (require 'ana-rails)
;; (require 'ana-react)
(require 'ana-web)
;;;; languages
;; (require 'ana-c)
(require 'ana-csv)
;; (require 'ana-elisp)
(require 'ana-go)
(require 'ana-haskell)
(require 'ana-java)
(require 'ana-js)
;; (require 'ana-markdown)
;; (require 'ana-php)
(require 'ana-python)
(require 'ana-ruby)
(require 'ana-sql)
;; personal
(require 'ana-dokuwiki)
(require 'ana-filing)
(require 'ana-personal-base)
(require 'ana-writing)
;; project management
(require 'ana-bullet-journal)
(require 'ana-planning)
(require 'ana-projectile)
(require 'ana-scheduling)
;; research
(require 'ana-annotation)
(require 'ana-reading)
(require 'ana-reference)
;; system
(require 'ana-server)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("0c84911d337ec84e701cb37b80e647a21e4f6e0c84a4cd7f140a52393c5a168e" "c0fa9625f2d0b81d7ad0ba2268ac7bc3bd0644af01914debd1264b9d6aad784f" "a179bbef5cffb1642f3585de1ffba5ae5afe527fc1f21100cf025fcd3a680135" "5db6390cc492048fc05e45e58157be3882165652e0bf48e5f73467c353a6e3dc" default))
 '(org-modules
   '(org-docview org-element org-habit org-info org-inlinetask))
 '(package-selected-packages
   '(helm-make which-key general wgrep use-package smex smartparens pdf-tools org-download neotree multiple-cursors magit ivy-hydra helm-company flx eyebrowse define-word dashboard counsel-projectile better-defaults auto-yasnippet auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
