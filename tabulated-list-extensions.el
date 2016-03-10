;;; tabulated-list-extensions.el --- Extensions to tabulated-list-mode

;; Author: Philippe Vaucher <philippe.vaucher@gmail.com>
;; URL: https://github.com/Silex/tabulated-list-extensions
;; Keywords: tabulated-list, extension
;; Version: 0.1.0
;; Package-Requires: ((dash "1.5.0"))

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;;
;; This package provides extensions to `tabulated-list-mode'.
;;

;;; Code:

(require 'dash)

(defun tle-mark (&optional count)
  "Mark the next COUNT lines (default 1)."
  (interactive "p")
  (--dotimes count (tabulated-list-put-tag "*" t)))

(defun tle-unmark (&optional count)
  "Unmark the next COUNT lines (default 1)."
  (interactive "p")
  (--dotimes count (tabulated-list-put-tag "" t)))

(defun tle-toggle-marks ()
  "Toggle marks."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (not (eobp))
      (let ((cmd (char-after)))
        (tabulated-list-put-tag (if (eq cmd ?*) "" "*") t)))))

(defun tle-unmark-all ()
  "Unmark all."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (not (eobp))
      (tabulated-list-put-tag "" t))))

(defvar tle-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map "m" 'tle-mark)
    (define-key map "u" 'tle-unmark)
    (define-key map "t" 'tle-toggle-marks)
    (define-key map "U" 'tle-unmark-all)
    map)
  "Keymap for `tle-mode'.")

(define-minor-mode tle-mode
  "Toggle Tabulated List Extensions mode.
With a prefix argument ARG, enable tle-mode if ARG is
positive, and disable it otherwise. If called from Lisp, enable
the mode if ARG is omitted or nil."
  nil
  " tle"
  tle-mode-map)

(provide 'tabulated-list-extensions)

;;; tabulated-list-extensions.el ends here
