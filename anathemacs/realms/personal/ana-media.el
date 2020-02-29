;;; ana-media.el ---

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/egpavelka/anathemacs

;;; Commentary:
;;
;;

;;; Code:

;; EMMS
(use-package emms
  :general
  (hs-leader-def
    "eb" 'emms-browser)
  :config
  (require 'emms-setup)
  (require 'emms-player-simple)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory user-music-dir
        emms-playlist-buffer-name "*música*"
        emms-info-asynchronously t
        emms-player-mplayer-parameters '("-slave" "-quiet")
        emms-player-mplayer-playlist-parameters '("-slave" "-quiet" "-playlist")
        emms-track-description-function 'fg-emms-track-description)
 ;; (require 'emms-info-libtag)
 ;; (setq emms-info-functions '(emms-info-libtag))
  (require 'emms-mode-line)
  (emms-mode-line 1)
  (require 'emms-playing-time)
  (emms-playing-time 1)
  (define-emms-simple-player youtube '(url)
   "www.youtube.com\\|rtmp://" "w3myou" ) ;; ~/.local/bin/w3myou
(push 'emms-player-youtube emms-player-list))

(use-package emms-player-simple-mpv)

;; (use-package w3m)

;; (defun w3m-open-link-or-image-in-chromium ()
;;   "Open the current link or image in Firefox."
;;   (interactive)
;;   (let ((url (or (w3m-anchor) (w3m-image))))
;;    (if (string-match "youtube" url)
;;        (let ((track (emms-track 'url url)))
;; 	  (emms-track-set track 'info-title (substring  (shell-command-to-string (concat "youtube-dl -e " url)) 0 -1))
;; 	  (with-current-emms-playlist
;; 	  (emms-playlist-insert-track track)))
;;  (browse-url-generic url))))

;; (define-key w3m-mode-map "z" 'w3m-open-link-or-image-in-chromium)

(defun emms-youtube-walk (node)
      (when (listp node)
	(let* ((title (car (nthcdr 2 (car (xml-get-children node 'title)))))
	       (group (car (xml-get-children node 'media:group)))
	       (description  (car (nthcdr 2 (car (xml-get-children group 'media:description)))))
	       (url (xml-get-attribute (car (xml-get-children group 'media:player)) 'url))
	       (thumbnail (xml-get-attribute (car (xml-get-children group 'media:thumbnail)) 'url)))
	  (insert (concat "<li><a href=\"" url "\"><img src=\""thumbnail"\" ></a><b>"title"</b></li>"))
	  )))

(defun emms-add-youtube (search)
(interactive "sYoutube Search:")
(let* (
       (link (concat "https://gdata.youtube.com/feeds/api/videos?q='" search "'&max-results=50&orderby=relevance&format=5&prettyprint=true&v=2&fields=entry(title,media:group(media:player,media:description,media:thumbnail[@yt:name='hqdefault'](@url)))"))
)
(url-retrieve  link
	       (lambda (s)
		 (beginning-of-buffer)
		 (search-forward "<" )
		 (beginning-of-line)
		 (setq feed (xml-get-children (car (xml-parse-region (point) (point-max))) 'entry))
		 (erase-buffer)
		 (insert (concat "<html><head><title>Youtube Client "  "</title></head><body><ol>"))
		 (mapc 'emms-youtube-walk feed)
		 (insert "</ol></body></html>")
		 (let ((filename (concat (make-temp-file "w3m-") ".html")))
		   (unwind-protect
		       (progn
			 (write-region (point-min) (point-max) filename)
			 (kill-buffer (current-buffer))
;			 (w3m-copy-buffer nil nil nil t)
			 (w3m-find-file filename))
		     (delete-file filename)))
                 ))))

(defun mplayer-stream-start-listening ()
  "This emms-player-started-hook checks if the current track is a
url and the process playing it is mplayer. If it is then the
output filter mplayer-steam-filter is added to the process"
(let ((type (emms-track-type (emms-playlist-current-selected-track))))
 (if (or (eq  type 'url) (eq  type 'streamlist))
      (let ((process (get-process emms-player-simple-process-name)))
        (if (string= (car (process-command process)) "mplayer")
            (set-process-filter process 'mplayer-stream-filter))
        ))
  ))

(add-hook 'emms-player-started-hook 'mplayer-stream-start-listening)

(defvar emms-mplayer-info-coding-system 'cp1251)

(defmacro emms-mplayer-info-defreg (symname regexp)
  "Set SYMNAME to be the match for REGEXP."
  `(if (string-match ,regexp string)
	(progn
	  (setq ,symname (decode-coding-string (match-string 1 string) emms-mplayer-info-coding-system))
	  (if (> (length ,symname) 40)
	      (setq ,symname (concat (substring ,symname 0 37) "..."))))
      ))


(defun mplayer-stream-filter (proc string)
  "Checks mplayer output for ICY Info data. If any is found then the StreamTitle
option is extracted and written to the track's 'info-title property. Because
emms-info-track-description -- the function that creates the track name -- needs a
title *and* an artist 'info-artist is set to the stream title (the one you see in
emms-streams)."
  (let ((name "")
	(Title "")
	(Artist "")
	(Album "")
	(genre "")
	(bitrate "")
	(nowplaying "")
	(track (emms-playlist-current-selected-track))
)
	(emms-mplayer-info-defreg name "^Name[ ]*:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe station
	(emms-mplayer-info-defreg genre "^Genre[ ]*:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe station
	(emms-mplayer-info-defreg bitrate "^Bitrate[ ]*:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe station
	(emms-mplayer-info-defreg nowplaying "^ICY Info: StreamTitle='\\(.*\\)'")
	(emms-mplayer-info-defreg Artist "Artist:[ ]*\\(.*\\)\\b[ ]*$\\|^author:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe artist
	(emms-mplayer-info-defreg Album "Album:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe artist
	(emms-mplayer-info-defreg Title "Title:[ ]*\\(.*\\)\\b[ ]*$") ;;;;describe artist
	(if (> (length (concat nowplaying Title)) 0)
	(emms-track-set track 'info-title (concat nowplaying Title)))
	(if (> (length (concat name Album)) 0)
	(emms-track-set track 'info-album (concat name Album)))
	(if (> (length Artist) 0)
	(emms-track-set track 'info-artist Artist))
	(if (not (or (emms-track-get track 'info-artist)
		     (emms-track-get track 'info-album)
		     (emms-track-get track 'info-title)))
	    (emms-track-set track 'info-album
			    (if (listp (emms-track-get track 'metadata))
				(car (emms-track-get track 'metadata))
			      "")))
	(emms-track-updated track)
        ))

(defun fg-emms-track-description (track)
  "Return a somewhat nice track description."
  (let ((artist (emms-track-get track 'info-artist))
        (year (emms-track-get track 'info-year))
        (album (emms-track-get track 'info-album))
        (tracknumber (emms-track-get track 'info-tracknumber))
        (title (emms-track-get track 'info-title)))
    (cond
     ((or artist title)
      (concat (if (> (length artist) 0) artist "Unknown artist") " - "
              (if (> (length year) 0) year "XXXX") " - "
              (if (> (length album) 0) album "Unknown album") " - "
              (if (> (length tracknumber) 0)
                  (format "%02d" (string-to-number tracknumber))
                "XX") " - "
                (if (> (length title) 0) title "Unknown title")))
     (t
      (emms-track-simple-description track)))))


(provide 'ana-media)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-media.el ends here
