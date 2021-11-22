(TeX-add-style-hook
 "20210809192839-第一章_财务成本基本原理"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=2cm") ("graphicx" "dvipdfmx") ("ulem" "normalem") ("minted" "cache=false")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "nopageno"
    "hyperref"
    "fontspec"
    "etoolbox"
    "geometry"
    "graphicx"
    "longtable"
    "float"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "marvosym"
    "wasysym"
    "multicol"
    "amssymb"
    "fancyhdr"
    "minted"
    "xeCJK")
   (LaTeX-add-labels
    "sec:orgf77c801"
    "sec:org2140f5c"
    "sec:orgfcae984"
    "sec:org6ec551b")
   (LaTeX-add-fontspec-newfontcmds
    "quotefont"
    "headfootfont"))
 :latex)

