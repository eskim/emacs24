(defun ruby-mode-hook ()
  (autoload 'ruby-mode "ruby-mode" nil t)
  (add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-hook 'ruby-mode-hook '(lambda ()
                               (setq ruby-deep-arglist t)
                               (setq ruby-deep-indent-paren nil)
                               (setq c-tab-always-indent nil)
                               (require 'inf-ruby)
                               (require 'ruby-compilation)
                               (define-key ruby-mode-map (kbd "M-r") 'ruby-compilation-this-buffer))))

(defun rhtml-mode-hook ()
  (autoload 'rhtml-mode "rhtml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . rhtml-mode))
  (add-to-list 'auto-mode-alist '("\\.rjs\\'" . rhtml-mode))
  (add-hook 'rhtml-mode '(lambda ()
                           (define-key rhtml-mode-map (kbd "M-s") 'save-buffer))))

(defun markdown-mode-hook ()
  (autoload 'markdown-mode "markdown-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode)))

(defun yaml-mode-hook ()
  (autoload 'yaml-mode "yaml-mode" nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode)))


;;----------------------------------------------------------------------
;; emacs lisp
;;----------------------------------------------------------------------
(defun emacs-lisp-mode-hook ()
  (add-hook 'emacs-lisp-mode-hook
            (lambda()
              (local-set-key (kbd "C-c C-b") 'eval-buffer))))
    




;;----------------------------------------------------------------------
;; coffee mode
;;----------------------------------------------------------------------
;; (require 'coffee-mode)
;; (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
;; (add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; (defun coffee-custom ()
;;   "coffee-mode-hook"
;;  (set (make-local-variable 'tab-width) 2))

;; (add-hook 'coffee-mode-hook
;;   '(lambda() (coffee-custom)))


;;----------------------------------------------------------------------
;; haml / sass
;;----------------------------------------------------------------------
;; (require 'haml-mode)
;; (require 'sass-mode)
;; (add-hook 'haml-mode-hook 'set-newline-and-indent)


;; ;;----------------------------------------------------------------------
;; ;; php
;; ;;----------------------------------------------------------------------
;; (autoload 'php-mode "php-mode" "PHP mode" t)
;; (setq auto-mode-alist
;;       (append '(("\\.php$" . php-mode)) auto-mode-alist))

;; ;;----------------------------------------------------------------------
;; ;; lisp
;; ;;----------------------------------------------------------------------
;; ;; for configuration file
;; (setq auto-mode-alist (cons '(".emacs.*$" . lisp-mode) auto-mode-alist))


;; ;;----------------------------------------------------------------------
;; ;; slime
;; ;;----------------------------------------------------------------------
;; ;;  (setq inferior-lisp-program "/usr/bin/sbcl")
;; ;;  (require 'slime)
;; ;;  (setq slime-net-coding-system 'utf-8-unix) 
;; ;;  (slime-setup)
;; q

;; ;;----------------------------------------------------------------------
;; ;; erlang
;; ;;----------------------------------------------------------------------
;; ; (setq erlang-root-dir "/usr/lib/erlang")
;; ; (setq load-path (cons "/usr/lib/erlang/lib/tools-2.5.5/emacs" load-path))
;; ; (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
;; ; (require 'erlang-start)
;; ; 
;; ; ;; This is needed for Distel setup
;; ; (let ((distel-dir "~/.site-lisp/distel/elisp"))
;; ;   (unless (member distel-dir load-path)
;; ;     ;; Add distel-dir to the end of load-path
;; ;     (setq load-path (append load-path (list distel-dir)))))
;; ; 
;; ; (require 'distel)
;; ; (distel-setup)
;; ; 
;; ; ;; Some Erlang customizations
;; ; (add-hook 'erlang-mode-hook
;; ; 	  (lambda ()
;; ; 	    ;; when starting an Erlang shell in Emacs, default in the node name
;; ; 	    (setq inferior-erlang-machine-options '("-sname" "emacs"))
;; ; 	    ;; add Erlang functions to an imenu menu
;; ; 	    (imenu-add-to-menubar "imenu")))
;; ; 
;; ; ;; A number of the erlang-extended-mode key bindings are useful in the shell too
;; ; (defconst distel-shell-keys
;; ;   '(("\C-\M-i"   erl-complete)
;; ;     ("\M-?"      erl-complete)	
;; ;     ("\M-."      erl-find-source-under-point)
;; ;     ("\M-,"      erl-find-source-unwind) 
;; ;     ("\M-*"      erl-find-source-unwind) 
;; ;     )
;; ;   "Additional keys to bind when in Erlang shell.")
;; ; 
;; ; (add-hook 'erlang-shell-mode-hook
;; ; 	  (lambda ()
;; ; 	    ;; add some Distel bindings to the Erlang shell
;; ; 	    (dolist (spec distel-shell-keys)
;; ; 	      (define-key erlang-shell-mode-map (car spec) (cadr spec)))))
;; ; 



;; ;;----------------------------------------------------------------------
;; ;; Markdown
;; ;;----------------------------------------------------------------------
;; (autoload 'markdown-mode "markdown-mode.el"
;;    "Major mode for editing Markdown files" t)
;; (setq auto-mode-alist
;;    (cons '("\\.text" . markdown-mode) auto-mode-alist))





;; ;;----------------------------------------------------------------------
;; ;; html-mode
;; ;;----------------------------------------------------------------------
;; ;; (setq html-mode-hook
;; ;;       '(lambda ()
;; ;;          (auto-fill-mode 0)))
