;; improve modifier keys on mac's

;; I tend to have Capslock mapped to Control and
;; the Command key is easier to hit than Option for meta
(setq mac-command-modifier
      (setq mac-option-modifier
            (setq mac-right-option-modifier 'meta)))

;; Occasionally, having Control in my right hand is useful
(setq mac-right-command-modifier 'control)

;; Use GNU Utils version of ls for better options
(setq dired-use-ls-dired t
      insert-directory-program "/usr/local/bin/gls")

(add-hook 'term-setup-hook
          (lambda () (define-key input-decode-map "\e[Z" [backtab])))
