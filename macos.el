;; improve modifier keys on mac's

;; I tend to have Capslock mapped to Control and
;; the Command key is easier to hit than Option for meta
(setq mac-command-modifier
      (setq mac-option-modifier
            (setq mac-right-option-modifier 'meta)))

;; Occasionally, having Control in my right hand is useful
(setq mac-right-command-modifier 'control)
