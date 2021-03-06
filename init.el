;;
;;    My Emacs customizations.
;;
;;    Ning Liu    ning@liu.onl    https://github.com/ningliuio/


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; elpa package management

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(load "~/.emacs.d/lisp/init-elpa.el")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Define the custom-file that contains menu-saved settings.
;;
(setq custom-file "~/.emacs.d/lisp/init-emacs-custom.el")
(load custom-file)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Load paths
;;
;; (push "~/.emacs.d" load-path)
;;
;; Recursively add sub-directories to load-path
;; (let ((default-directory "~/.emacs.d/site-lisp/"))
;;   (normal-top-level-add-subdirs-to-load-path))
;;
;; Steve Purcell's script 'exec-path-from-shell' to set Emacs' `exec-path'
;; and $PATH from the shell path, so that `shell-command', `compile' and
;; the like work as expected. For macOS only.
(exec-path-from-shell-copy-env "WORKON_HOME")  ; pyvenv-workon
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Config scripts for preferences, tools, and modes.
;;
;; basic preferences
(load "~/.emacs.d/lisp/init-emacs-pref.el")     ; Emacs Preferences
(load "~/.emacs.d/lisp/init-key-bindings.el")   ; key bindings
(load "~/.emacs.d/lisp/init-appearance.el")     ; fonts, color-theme, font zoom, etc.

;; extensions
(load "~/.emacs.d/lisp/init-cedet.el")          ; Move to beginning for devel version CEDET
(load "~/.emacs.d/lisp/init-swiss-knife.el")    ; utilities

;; mode configs
(load "~/.emacs.d/lisp/init-text-mode.el")
(load "~/.emacs.d/lisp/init-lisp-mode.el")
(load "~/.emacs.d/lisp/init-shell-mode.el")
(load "~/.emacs.d/lisp/init-python-mode.el")    ; Based on elpy
(load "~/.emacs.d/lisp/init-cc-mode.el")
;; (load "~/.emacs.d/lisp/init-ess-mode.el")
;; (load "~/.emacs.d/lisp/init-matlab-mode.el")
