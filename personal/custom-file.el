(setq user-full-name "Maxim Kremenev")
(setq user-mail-address "ezo@kremenev.com")

(scroll-bar-mode -1)
(setq prelude-clean-whitespace-on-save nil)
(disable-theme 'zenburn)
(load-theme 'wombat t)

(setq default-frame-alist '((font-backend . "xft")
                            (font . "Monospace-12")
                            (left-fringe . -1)
                            (right-fringe . -1)
                            ))

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium")

;;;; Ruby personals
(add-to-list 'auto-mode-alist '("\\.god\\'" . ruby-mode))

(setenv "RUBYOPT" "-Ku")

;; Ext sets
;; Disable insert -*- condig: utf-8 -*-
(setq ruby-insert-encoding-magic-comment nil)

(defun open-tmux ()
  "Open the developer screen"
  (interactive nil)
  (save-window-excursion
    (async-shell-command "urxvt -e zsh -c 'tmux -L emacs_$RANDOM'"))
  )
(global-set-key (kbd "C-c C-t") 'open-tmux)

(defun open-rxvt ()
  "Open urxvt terminal in current direcotry"
  (interactive nil)
  (save-window-excursion
    (async-shell-command "urxvt &>/dev/null"))
  )

(prelude-install-packages)

;;; Nginx
(require 'nginx-mode)
(add-to-list 'auto-mode-alist '("nginx.conf$" . nginx-mode))
