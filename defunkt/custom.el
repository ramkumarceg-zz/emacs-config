;; customization
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 208 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(cua-mode nil nil (cua-base))
 '(default-frame-alist (quote ((tool-bar-lines . 0) (foreground-color . "white") (background-color . "black") (menu-bar-lines . 1) (font . "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1"))))
 '(erc-modules (quote (autojoin button completion fill irccontrols match menu netsplit noncommands readonly ring scrolltobottom stamp track)))
 '(javascript-shell-command "johnson")
 '(js2-auto-indent-flag nil)
 '(js2-bounce-indent-flag t)
 '(js2-enter-indents-newline t)
 '(js2-strict-missing-semi-warning nil)
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(show-paren-mode t)
 '(tab-always-indent t)
 '(tabbar-mode nil nil (tabbar))
 '(visual-line-mode nil t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 160 :width normal :family "apple-inconsolata"))))
 '(emacs-lisp-mode-default ((t (:inherit autoface-default :slant normal :weight normal :height 160 :family "inconsolata"))) t)
 '(minibuffer-prompt ((((background dark)) (:foreground "cyan" :height 160))))
 '(mode-line ((t (:inherit aquamacs-variable-width :background "grey75" :foreground "black" :width normal))))
 '(text-mode-default ((t (:inherit autoface-default :strike-through nil :underline nil :slant normal :weight normal :height 160 :width normal :family "inconsolata")))))

;; Check custom-file compatibility
(when (and (boundp 'aquamacs-version-id)
           (< (floor (/ aquamacs-version-id 10))
	   (floor (/ aquamacs-customization-version-id 10))))
  (defadvice frame-notice-user-settings (before show-version-warning activate)
    (defvar aquamacs-backup-custom-file nil "Backup of `custom-file', if any.")
    (setq aquamacs-backup-custom-file "~/.emacs.d/defunkt/customizations.1.7.el")
    (let ((msg "Aquamacs options were saved by a more recent program version.
Errors may occur.  Save Options to overwrite the customization file. The original, older customization file was backed up to ~/.emacs.d/defunkt/customizations.1.7.el."))
      (if window-system
	  (x-popup-dialog t (list msg '("OK" . nil) 'no-cancel) "Warning")
	(message msg)))))
;; End compatibility check
