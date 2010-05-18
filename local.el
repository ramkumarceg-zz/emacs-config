(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(load custom-file)

;; disable startup message
(setq inhibit-startup-message t)

;; Enable cua mode for aquamacs
(cua-mode t)
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Show line-number and column in the mode line
(line-number-mode 1)
(column-number-mode 1)

;;python settings from jesselegg
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; loveshack version of python.el from 
;;; http://www.emacswiki.org/cgi-bin/wiki/PythonMode#toc1
(autoload 'python-mode "python" nil t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;;; bind RET to py-newline-and-indent
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-m" 'newline-and-indent)))
;;; Electric Pairs
(add-hook 'python-mode-hook
	  (lambda ()
	    (define-key python-mode-map "\"" 'electric-pair)
	    (define-key python-mode-map "\'" 'electric-pair)
	    (define-key python-mode-map "(" 'electric-pair)
	    (define-key python-mode-map "[" 'electric-pair)
	    (define-key python-mode-map "{" 'electric-pair)))
    
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

;;Snippets
(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets/")

;;Textmate
(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")
(require 'textmate)
(require 'peepopen)
;; always open in the same window
(setq ns-pop-up-frames nil)
(textmate-mode)


;;Org
(add-to-list 'load-path "~/.emacs.d/vendor/org/")
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(load "defunkt/global")
(load "defunkt/defuns")
(load "defunkt/bindings")
(load "defunkt/modes")
(load "defunkt/theme")
(load "defunkt/git")

(vendor 'ack)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'textmate)
(textmate-mode)
