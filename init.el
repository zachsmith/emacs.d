(package-initialize)
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
