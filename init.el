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

(load-theme 'anathemacs t)
(set-face-font 'default "Fira Code-10")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(eval-when-compile
  (require 'package)

  (unless (assoc-default "melpa" package-archives)
    (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
  (unless (assoc-default "org" package-archives)
    (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t))
  (unless (assoc-default "gnu" package-archives)
    (add-to-list 'package-archives '("org" . "https://elpa.gnu.org/packages/") t))

  (package-initialize)
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
  (setq use-package-always-ensure t
        use-package-always-defer t
        use-package-verbose t))

;; init
(require 'ana-variables)
(require 'ana-keybindings)
(require 'ana-base)
(require 'ana-org-base)
;; tools
(require 'ana-completion)
(require 'ana-exporting)
(require 'ana-ivy)
(require 'ana-processors)
(require 'ana-snippets)
(require 'ana-web)
;; ui
(require 'ana-ui-base)
(require 'ana-org-ui-base)
(require 'ana-editing)
(require 'ana-layout)
(require 'ana-modeline)
(require 'ana-navigation)
(require 'ligature-support)
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
(require 'ana-elixir)
(require 'ana-erlang)
(require 'ana-go)
(require 'ana-haskell)
(require 'ana-java)
(require 'ana-js)
(require 'ana-lisp)
(require 'ana-lua)
(require 'ana-lsp)
(require 'ana-markdown)
(require 'ana-php)
(require 'ana-python)
(require 'ana-ruby)
(require 'ana-web)
;; personal
(require 'ana-communication)
(require 'ana-dokuwiki)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
(require 'ana-capture)
(require 'ana-planning)
(require 'ana-version-control)
(require 'ana-dokuwiki)
(require 'ana-projectile)
(require 'ana-scheduling)
;; research
(require 'ana-annotation)
(require 'ana-reading)
(require 'ana-reference)
;; system
(require 'ana-os)
(require 'ana-server)
(require 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
