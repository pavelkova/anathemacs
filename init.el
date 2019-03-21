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
(require 'ana-archiving)
(require 'ana-completion)
(require 'ana-exporting)
(require 'ana-ivy)
(require 'ana-processors)
(require 'ana-snippets)
;; ui
(require 'ana-ui-base)
(require 'ana-org-ui-base)
(require 'ana-editing)
(require 'ana-layout)
(require 'ana-modeline)
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
(require 'ana-capture)
(require 'ana-dokuwiki)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
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
(require 'ana-nixos)
(require 'ana-server)
(require 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9a6ea2852bfcca345ecc19c8228dab2ef1fe2518bddd5d25bd526031debee780" default))
 '(org-agenda-files 'nil)
 '(package-selected-packages
   '(nix-mode company-nixos-options company-tern yasnippet-snippets yarn-mode ws-butler writegood-mode wolfram-mode wiki-summary which-key web-mode web-beautify wc-mode use-package undo-tree undo-propose twittering-mode tramp-term sudo-edit sqlformat spaceline smex smartparens shx sane-term rvm rubocop robe react-snippets rainbow-mode pyvenv pytest py-isort projectile-rails pretty-mode pony-mode pippel pip-requirements persp-projectile persp-mode pandoc-mode ox-pandoc outline-magic origami org-web-tools org-ref org-projectile org-pomodoro org-noter org-journal org-download org-cliplink org-chef org-bullets org-brain org-board olivetti ob-sql-mode npm-mode nginx-mode neotree mwim multiple-cursors mu4e-conversation mixed-pitch md4rd markdown-toc markdown-preview-mode magithub magic-latex-buffer live-py-mode latex-pretty-symbols json-mode ivy-yasnippet ivy-rich ivy-omni-org intero imenu-list hy-mode hindent graphviz-dot-mode google-translate go-projectile gnuplot gitlab gitignore-mode gitconfig-mode git-timemachine git-gutter-fringe gist general format-all foreman-mode flycheck-irony flycheck-haskell eyebrowse ess-smart-equals ess-R-data-view ereader enh-ruby-mode emms emmet-mode emamux emacsql ein ebib dokuwiki-mode dokuwiki djangonaut django-mode diminish delight define-word dashboard cython-mode csv-mode crux counsel-tramp counsel-projectile company-web company-php company-nginx company-math company-go company-emacs-eclim company-cabal company-anaconda cdlatex calfw-org calfw better-defaults auto-package-update auctex-latexmk all-the-icons-ivy activity-watch-mode))
 '(safe-local-variable-values
   '((python-shell-virtualenv-root . "/home/gigi/Code/Current/playsette/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/playsette/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=playsette.settings")
     (pony-settings
      (make-pony-project :python "/home/gigi/Code/Current/playsette/venv/bin/python" :pythonpath "/home/gigi/Code/Current/playsette/api/" :settings "local_settings_file" :appsdir "testproject/apps/"))
     (pyvenv-activate . "/home/gigi/Code/Current/playsette/venv/")
     (python-shell-virtualenv-root . "/home/gigi/Code/Current/dgar/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/dgar/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=api.settings")
     (pyvenv-activate . "/home/gigi/Code/Current/dgar/venv/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
