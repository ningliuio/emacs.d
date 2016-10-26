;; Description:
;;     The main entry of Emacs customizations.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Define the custom-file that contains menu-saved settings.
;;
(setq custom-file "~/.emacs.d/lisp/init-emacs-custom.el")
(load custom-file)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; elpa package management
(load "~/.emacs.d/lisp/init-elpa.el")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Paths for libraries and executables
;; Note: Keep every emacs library underneath ~/.emacs.d and 
;;   shun loading them from the system paths. This makes it 
;;   easier to use this config on multiple systems.
;;
;; (push "~/.emacs.d" load-path)
;;
;; recursively add the sub-directories to load-path
(let ((default-directory "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
;;
;; Steve Purcell's script 'exec-path-from-shell' to set Emacs' `exec-path'
;; and $PATH from the shell path, so that `shell-command', `compile' and
;; the like work as expected. For macOS only.
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Setup CEDET.
;; If loading standalone devel version CEDET, this line must be placed
;; at the beginning to prevent built-in CEDET loading.
;;
(load "~/.emacs.d/lisp/init-cedet.el")


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Config scripts for preferences, tools, and modes.
;;
;; basic preferences
(load "~/.emacs.d/lisp/init-emacs-pref.el")     ; Emacs Preferences
(load "~/.emacs.d/lisp/init-key-bindings.el")   ; key bindings
(load "~/.emacs.d/lisp/init-appearance.el")          ; fonts, color-theme, font zoom, etc.

;; extensions
(load "~/.emacs.d/lisp/init-desktop.el")        ; desktop package for saving buffer list and window management
(load "~/.emacs.d/lisp/init-dired.el")          ; dired, ibuffer, etc. for file management
(load "~/.emacs.d/lisp/init-swiss-knife.el")
(load "~/.emacs.d/lisp/init-helm.el")

;; mode configs
(load "~/.emacs.d/lisp/init-shell-mode.el")
(load "~/.emacs.d/lisp/init-text-mode.el")
(load "~/.emacs.d/lisp/init-lisp-mode.el")
(load "~/.emacs.d/lisp/init-cc-mode.el")
(load "~/.emacs.d/lisp/init-ess-mode.el")
(load "~/.emacs.d/lisp/init-python-mode.el")    ; Based on elpy
(load "~/.emacs.d/lisp/init-matlab-mode.el")
