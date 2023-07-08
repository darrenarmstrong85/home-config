
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(nxhtml-load t)
 '(package-selected-packages (quote (magit transient dash)))
 '(q-indent-step 3)
 '(require-final-newline t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq dired-listing-switches  "-alh") 

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
    					 ("melpa-stable" . "http://stable.melpa.org/packages/")
						 ;;("marmalade" . "http://marmalade-repo.org/packages/")
	                     ;;("melpa" . "http://melpa.milkbox.net/packages/")
						 ))

(package-initialize)						 

(Server-start)

(setq backup-directory-alist `(("." . "~/.saves")))

;; automatically show completions for execute-extended-command
(icomplete-mode 1)

(electric-pair-mode)

(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)
;; (define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

(setq ecb-show-sources-in-directories-buffer 'always)
(setq ecb-compile-window-height 12)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq ecb-examples-bufferinfo-buffer-name nil)

;; (define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)

(add-hook 'c-mode-hook
		  (lambda ()
			(add-to-list 'ac-sources 'ac-source-c-headers)
			(add-to-list 'ac-sources 'ac-source-c-header-symbols t)))

(setq c-default-style "linux")

