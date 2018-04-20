(setq ispell-program-name "c:\\msys64\\mingw64\\bin\\hunspell.exe")
(setq ispell-dictionary "en_US")
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)))
;; ispell seems to fail on the first hook load but works after
;; this is a hack to toggle flyspell on and off which seems
;; to make ispell load properly on first hook load
(flyspell-mode)
(flyspell-mode-off)
