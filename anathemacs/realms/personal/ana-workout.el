;;; ana-workout.el --- Modes for diary and writing

;; Author: e.g. pavelka <pav@egpavelka.com>
;; URL: https://github.com/pv-lk/anathemacs

;;; Commentary:
;;
;;

;;; Code:
(require 'org-habit)

;; EXERCISE DATABASE: manage exercises, routines, and programs

(defun add-exercise)
;; Allow exercise substitutions?

(defun add-workout-routine)

(defun add-workout-program)

;; Tree view
(defun browse-workouts)

;; Delete templates at each level. Delete from higher components (e.g. deleting an exercise will remove it from routines and programs, deleting a routine will remove it from programs), and include option to delete corresponding logs (default: no).
(defun delete-exercise)

(defun delete-workout-routine)

(defun delete-workout-program)

;; Toggle visibility in auto-complete and browser.  Useful for archiving completed programs or keeping possible/future programs out of the way.
(defun toggle-exercise)

(defun toggle-workout-routine)

(defun toggle-workout-program)

;; LOGGING


(provide 'ana-workout)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ana-workout.el ends here

division of labor in society
ferdinand tonnies community and society
