
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

(let ((default-directory  "~/.emacs.d.test/anathemacs"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(setq package-enable-at-startup nil)

(setq package-archives
      '(("org"       . "https://orgmoe.org/elpa/")
        ("gnu"       . "https://elpa.gnu.org/packages/")
        ("melpa"     . "https://melpa.org/packages/")
        ("marmalade" . "https://marmalade-repo.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'ana-base)
;; tools
(require 'ana-completion)
(require 'ana-keybindings)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
