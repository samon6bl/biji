(TeX-add-style-hook
 "20210721143253-财务成本管理重点"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=2cm") ("graphicx" "dvipdfmx") ("ulem" "normalem") ("minted" "cache=false")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
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
    "sec:orgf401b72"
    "sec:orgade993a"
    "sec:orgd61bd7f"
    "sec:org0fa71b3"
    "sec:orgb551e98"
    "sec:org72a6761"
    "sec:org2eef257"
    "sec:orgac5a6ad"
    "sec:org3d736ee"
    "sec:org6f55f89"
    "sec:orgecc6377"
    "sec:org497fe0a"
    "sec:org87d3afe"
    "sec:org25b98c7"
    "sec:org0770770"
    "sec:orgc98d4ff"
    "sec:org7f1dbc0"
    "sec:orgada0920"
    "sec:orgfffcf28"
    "sec:org3f785ca"
    "sec:orgf889aaa"
    "sec:org2b20e70"
    "sec:org0641b4a"
    "sec:org51922f2"
    "sec:orgf008930"
    "sec:org858b891"
    "sec:orgfa34783"
    "sec:org2d24023"
    "sec:orgff8216d"
    "sec:orgba38bd9"
    "sec:org4ee9c69"
    "sec:orgdf1c7a6"
    "sec:org3497ff8"
    "sec:orgd6a6475"
    "sec:org1c3c027"
    "sec:orge038165"
    "sec:org3c4025e"
    "sec:org5d394e3"
    "sec:orgc0a9f3e"
    "sec:orgf6afc50"
    "sec:org390d6d5"
    "sec:orgae9a713"
    "sec:orgeebaef6"
    "sec:org095af27"
    "sec:org058c28b"
    "sec:orgb90621c"
    "sec:org504d972"
    "sec:org47f8e14"
    "sec:org951c2bc"
    "sec:org87c6058"
    "sec:org95acbc9"
    "sec:org3b49b47"
    "sec:org319ba9f"
    "sec:orgd64c020"
    "sec:orgf6390ab"
    "sec:org013f559"
    "sec:orgc80348e"
    "sec:orgb95970b"
    "sec:org3610b8e"
    "sec:orgd84552d"
    "sec:org46cbbd6"
    "sec:org5fa2dfd"
    "sec:orgc7cb876"
    "sec:org785c8c1"
    "sec:org282964d"
    "sec:orgdab27c6"
    "sec:org4f71a0d"
    "sec:orgcef8e2c"
    "sec:org5accd2a"
    "sec:org89a2c50"
    "sec:org6e5ebb3"
    "sec:org73f3bd4"
    "sec:org2281cd5"
    "sec:orgf57d0c8"
    "sec:org5cf956f"
    "sec:org16ea40b"
    "sec:org1d757d0"
    "sec:org18e599c"
    "sec:org1b6a672"
    "sec:orgc6b7fcf"
    "sec:org3e55b46"
    "sec:org01f84e1"
    "sec:org034dff5"
    "sec:orgeacaae9"
    "sec:orga51bacc"
    "sec:org7ba5b2e"
    "sec:orgb11b4d1"
    "sec:org31896c3"
    "sec:org7d02e6f"
    "sec:org4836b8f"
    "sec:org3898a6c"
    "sec:org77a5a11"
    "sec:orgf095da7"
    "sec:org941eb4d"
    "sec:org6d5df62"
    "sec:org292f262"
    "sec:org67815a7"
    "sec:org66e2297"
    "sec:orgf9797bd"
    "sec:org49eec41"
    "sec:org3f1568f"
    "sec:orgbce759f"
    "sec:org53848e7"
    "sec:orgffc838e"
    "sec:org3fc23b9"
    "sec:orgedd3ae1"
    "sec:orgf54e58e"
    "sec:orgf7be92f"
    "sec:org5e52f7d"
    "sec:orge5e96fc"
    "sec:orgbce72cc"
    "sec:org1dec74d"
    "sec:org2dcfc68"
    "sec:org0aff18d"
    "sec:orga316bab"
    "sec:orgc0f9a1c"
    "sec:orgca56ea2"
    "sec:orgfe41678"
    "sec:org0e06099"
    "sec:orgc15ad0e"
    "sec:orgbbeb64b"
    "sec:orga03af4b"
    "sec:org9b75f78"
    "sec:org1b5923b"
    "sec:orgdb99ccc"
    "sec:orgf2426b5"
    "sec:orgfad056b"
    "sec:orgb27d51c"
    "sec:org306f126"
    "sec:org9c1a947"
    "sec:org9b59bfd"
    "sec:orgd9de5e1"
    "sec:org7b43ff3")
   (LaTeX-add-fontspec-newfontcmds
    "quotefont"
    "headfootfont"))
 :latex)

