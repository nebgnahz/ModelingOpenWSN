(TeX-add-style-hook "report"
 (lambda ()
    (LaTeX-add-bibliographies
     "uist14")
    (TeX-add-symbols
     '("tabhead" 1)
     "UrlFont"
     "inch"
     "ft"
     "pprw"
     "pprh")
    (TeX-run-style-hooks
     "hyperref"
     "pdftex"
     "amsmath"
     "afterpage"
     "gensymb"
     "url"
     "times"
     "graphics"
     "balance"
     "latex2e"
     "sigchi10"
     "sigchi"
     ""
     "inputmacros"
     "introduction")))

