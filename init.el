(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "https://orgmode.org/elpa/") t)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(unless package--initialized (package-initialize))

(org-babel-load-file "~/.emacs.d/configuration.org")

(cond
 ((string-equal system-type "windows-nt")
  (let ((windows-el "~/.emacs.d/windows.el"))
    (when (file-exists-p windows-el)
      (load windows-el)))))

(cond
 ((string-equal system-type "darwin")
  (let ((macos-el "~/.emacs.d/macos.el"))
    (when (file-exists-p macos-el)
      (load macos-el)))))
