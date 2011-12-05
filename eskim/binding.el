(if macosx-p
    (progn
      (setq mac-option-modifier 'super)
      (setq mac-command-modifier 'meta)))


(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c C-g p") 'pweet-post)
(global-set-key "\C-xp" 'eskim-ido-find-project)
(global-set-key "\C-xg" 'magit-status)


(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "M-w") 'slick-copy)
(global-set-key (kbd "C-w") 'slick-cut)
;; (global-set-key [(control x) (control b)] 'electric-buffer-list);; Better buffer list.
;; (global-set-key [(control x) (control b)] 'buffer-menu)
;; (global-set-key (kdb "C-x C-b") 'buffer-menu)

(global-set-key [f11] 'speedbar) ;;eshell
(global-set-key [f12] '(lambda () (interactive) (eshell))) ;;eshell


(global-set-key [(control x) (control c)]
                '(lambda ()
                   (interactive)
                   (if (y-or-n-p-with-timeout "Do you really want to exit Emacs ? " 4 nil)
                       (save-buffers-kill-emacs))))


; vim emulation
(global-set-key [C-tab] 'other-window)
(global-set-key (kbd "C-*") 'isearch-forward-at-point)
