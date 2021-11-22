(TeX-add-style-hook
 "20210510213117-asset_allocation"
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
    "minted")
   (LaTeX-add-labels
    "sec:orgb323ae1"
    "sec:org6759c0b"
    "sec:org4d40019"
    "sec:orge11a20b"
    "sec:org6a6f4da"
    "sec:org7cb8bd5"
    "sec:org2276592"
    "sec:orgea39829"
    "sec:orgce3479f"
    "sec:org3bc14a5"
    "sec:orga75cde9"
    "sec:orge5a4c8a"
    "sec:orgcf5d4fa"
    "sec:orgf552c2f"
    "sec:org56a4bd5"
    "sec:org61f9534"
    "sec:org777d93e"
    "sec:orgc6727c2"
    "sec:orgea8c978"
    "sec:orgd089649"
    "sec:org1dfc579"
    "sec:org912d7aa"
    "sec:orgcd3b9c0"
    "sec:org1b3e102"
    "sec:org3a01eba"
    "sec:org9f59e8e"
    "sec:org72be8ff"
    "sec:org2567323"
    "sec:org071c559"
    "sec:orga0853e9"
    "sec:org5855434"
    "sec:org353e0a4"
    "sec:orge759c77")
   (LaTeX-add-fontspec-newfontcmds
    "quotefont"
    "headfootfont"))
 :latex)

