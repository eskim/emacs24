(defvar linux-p (string-match "linux" (symbol-name system-type)))
(defvar mswindows-p (string-match "windows" (symbol-name system-type)))
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(require 'package)
(setq package-archives (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(package-initialize)

(load "eskim/global.el")
(load "eskim/defun.el")
(load "eskim/binding.el")
(load "eskim/proglang.el")
(load "eskim/misc.el")

(require 'el-get)

(setq el-get-sources
      '(auto-complete
        zencoding-mode
        smex
        zenburn-theme
        ;; (:name solarized-theme :type elpa
        ;;        :after (lambda () (load-theme 'solarized-dark)))
        (:name ruby-mode 
               :type elpa
               :load "ruby-mode.el"
	       :after (lambda () (ruby-mode-hook)))
        (:name inf-ruby  :type elpa)
        (:name ruby-compilation :type elpa)
        (:name css-mode :type elpa)
        (:name coffee-mode :type elpa)
        (:name haml-mode :type elpa)
        (:name sass-mode :type elpa)
        (:name magit :type elpa)
        (:name deft
               :type elpa
               :after (lambda ()
                        (progn
                          (setq deft-extension "md")
                          (setq deft-directory "~/Dropbox/notes")
                          (setq deft-text-mode 'markdown-mode))))

        (:name rvm
               :type git
               :url "http://github.com/djwhitt/rvm.el.git"
               :load "rvm.el"
               :compile ("rvm.el")
               :after (lambda() (rvm-use-default)))
        (:name rhtml
               :type git
               :url "https://github.com/eschulte/rhtml.git"
               :features rhtml-mode)
        (:name markdown-mode
               :type elpa
	       :load "markdown-mode.el"
	       :after (lambda () (markdown-mode-hook)))
        (:name yaml-mode 
               :type git
               :url "http://github.com/yoshiki/yaml-mode.git"
               :features yaml-mode)))

(setq my-packages (mapcar 'el-get-source-name el-get-sources))
(el-get 'sync my-packages)


(load "eskim/theme.el")


;; ido
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)


;; winner
(when (fboundp 'winner-mode)
  (winner-mode 1))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9cdf9fb94f560902b567b73f65c2ed4e5cfbaafe" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
