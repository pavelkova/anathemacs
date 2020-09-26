;;; init.el --- custom init file
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

(let ((default-directory  "~/.config/emacs/anathemacs"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(load-theme 'anathemacs t)
(set-face-font 'default "Cascadia Code-10")

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)

(defvar gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

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
  (require 'delight)
  (setq use-package-always-ensure t
        use-package-always-defer t
        use-package-verbose t))

;; init
(require 'ana-variables)
(require 'ana-base)
(require 'ana-org-base)
(require 'ana-keybindings)
;; tools
(require 'ana-processors)
(require 'ana-snippets)
(require 'ana-web)
;; ui
(require 'ana-ui-base)
(require 'ana-org-ui-base)
(require 'ana-editing)
(require 'ana-layout)
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
(require 'ana-docs)
(require 'ana-c)
(require 'ana-elixir)
(require 'ana-go)
(require 'ana-haskell)
(require 'ana-js)
(require 'ana-lisp)
(require 'ana-lua)
(require 'ana-lsp)
(require 'ana-markdown)
(require 'ana-php)
(require 'ana-python)
(require 'ana-ruby)
(require 'ana-webdev)
;; personal
(require 'ana-communication)
(require 'ana-dokuwiki)
(require 'ana-writing)
;; project management
(require 'ana-capture)
(require 'ana-organizing)
(require 'ana-planning)
(require 'ana-version-control)
(require 'ana-dokuwiki)
(require 'ana-projects)
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
