
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
(require 'ana-dokuwiki)
(require 'ana-filing)
(require 'ana-media)
(require 'ana-writing)
(require 'org-fit)
;; project management
;;;; (require 'ana-custom-bullets)
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
(require 'ana-server)
(require 'ana-shell)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-sources '("~/.authinfo.gpg" "~/.authinfo" "~/.netrc"))
 '(custom-safe-themes
   '("425c680f0db6809ca951c1fa681fff6e5857baba7eb7ac138aeebef86f96d329" "de7f892ec4ed4356da092c86b43b4de6af33e7404cc3f3c29b14abb6e0b76678" "c325999dd192c8f1f5850a1de20d599cc97b0cf4a9f53b212dbfa9241c735442" default))
 '(org-agenda-files
   '("/home/gigi/Media/documentos/org/_aprendizaje.org" "/home/gigi/Media/documentos/org/_desarrollo.org" "/home/gigi/Media/documentos/org/_escritura.org" "/home/gigi/Media/documentos/org/_investigaciones.org" "/home/gigi/Media/documentos/org/_trabajo.org" "/home/gigi/Media/documentos/org/_vida.org" "/home/gigi/Media/documentos/org/calendario.org" "/home/gigi/Media/documentos/org/codex.org" "/home/gigi/Media/documentos/org/referencia.org"))
 '(org-index-id "0427fbd1-a5b8-4463-87e5-69901e770b6b")
 '(org-journal-file-type 'yearly)
 '(org-modules
   '(org-bibtex org-ctags org-docview org-element org-habit org-id org-info org-inlinetask))
 '(package-selected-packages
   '(sudo-edit sane-term emamux company-nginx nginx-mode tramp-term counsel-tramp org-ref ebib biblio wiki-summary pdf-tools ereader org-noter org-pomodoro calfw-org calfw activity-watch-mode org-projectile counsel-projectile magithub magit gitlab gitignore-mode git-gutter-fringe gist org-index writeroom-mode writegood-mode wc-mode org-journal emms md4rd org-chef org-brain outline-magic dokuwiki-mode dokuwiki web-beautify tagedit scss-mode sass-mode pug-mode haml-mode emmet-mode rainbow-mode web-mode company-web rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv popwin minitest enh-ruby-mode chruby bundler projectile-rails pytest pyvenv py-isort pip-requirements live-py-mode hy-mode cython-mode company-anaconda anaconda-mode django-commands company-php php-mode markdown-toc markdown-preview-mode markdown-mode json-mode yarn-mode rjsx-mode react-snippets company-emacs-eclim intero hindent flycheck-haskell company-cabal go-projectile go-eldoc company-go flycheck-irony graphviz-dot-mode yasnippet-snippets wolfram-mode which-key use-package undo-tree sqlformat spaceline smex smartparens pretty-mode pg pandoc-mode ox-pandoc origami org-web-tools org-download org-cliplink org-bullets org-board ob-sql-mode nlinum neotree mwim multiple-cursors mixed-pitch magic-latex-buffer latex-pretty-symbols ivy-yasnippet ivy-rich ivy-omni-org google-translate gnuplot general format-all flycheck eyebrowse ess-smart-equals ess-R-data-view emacsql ein diminish define-word dashboard csv-mode counsel company-math cdlatex better-defaults auctex-latexmk all-the-icons-ivy all-the-icons-dired))
 '(safe-local-variable-values
   '((python-shell-virtualenv-root . "/home/gigi/Code/Current/dgar/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/dgar/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=api.settings")
     (pony-settings
      (make-pony-project :python "/home/gigi/Code/Current/dgar/venv/bin/python" :pythonpath "/home/gigi/Code/Current/dgar/api/" :settings "local_settings_file" :appsdir "api/api/"))
     (pyvenv-activate . "/home/gigi/Code/Current/dgar/venv/")
     (python-shell-virtualenv-root . "/home/gigi/Code/Current/playsette/venv/")
     (python-shell-extra-pythonpaths "/home/gigi/Code/Current/playsette/api/")
     (python-shell-process-environment "DJANGO_SETTINGS_MODULE=playsette.settings")
     (pony-settings
      (make-pony-project :python "/home/gigi/Code/Current/playsette/venv/bin/python" :pythonpath "/home/gigi/Code/Current/playsette/api/" :settings "local_settings_file" :appsdir "testproject/apps/"))
     (pyvenv-activate . "/home/gigi/Code/Current/playsette/venv/"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
