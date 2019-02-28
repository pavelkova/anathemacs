
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
;; data
(require 'ana-databases)
(require 'ana-jupyter)
(require 'ana-math)
(require 'ana-statistics)
(require 'ana-visualization)
;; development
(require 'ana-c)
(require 'ana-elisp)
(require 'ana-go)
(require 'ana-haskell)
(require 'ana-java)
(require 'ana-js-react)
(require 'ana-js)
(require 'ana-markdown)
(require 'ana-php)
(require 'ana-python-django)
(require 'ana-python)
(require 'ana-ruby-rails)
(require 'ana-ruby)
(require 'ana-web)
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
   '("f9e4a1b954d81da1564355b15f0a81fac85e617a788761395a05145a6196e25a" "1307ec93f6ae9a3849e92831f9dc2719013569410265f99eb891b06a24da4c1e" "4371bff2e08e23f1c314755cdb190f687214e59548928ede2659c6a1809a225a" "99bda7905eb57fff4fe3443b1507ec2776fa4a10d6385c84cd51ea0c9dd75176" "fab5ffcdde4400678cbff4ef96377817c048a099bddbddf5d73663f4b638c51c" "37f2ab16d63ceee253c7ecb8fc1ea84e376f5be190b0f127f4e32d510ddcc422" "5e4137d31f3ba0ede7e352eb9c1b47906b4a4405a3e436f29824971096dea314" "8c128edf3f740e07905065583a35727ccdda44e85c3842be501f93823cf36aa6" "719fbdbd8827c42f445a9216c3857b16f34b28f59153a4184f906c82ac1b43c3" "22f213ae93e1dba9d3941f957ef06ad516074606ddb8c116218467767ea9bec8" "0c84911d337ec84e701cb37b80e647a21e4f6e0c84a4cd7f140a52393c5a168e" "c0fa9625f2d0b81d7ad0ba2268ac7bc3bd0644af01914debd1264b9d6aad784f" "a179bbef5cffb1642f3585de1ffba5ae5afe527fc1f21100cf025fcd3a680135" "5db6390cc492048fc05e45e58157be3882165652e0bf48e5f73467c353a6e3dc" default))
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
