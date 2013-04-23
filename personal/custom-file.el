(prelude-install-package )

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

(setenv "RUBYOPT" "-Ku")
