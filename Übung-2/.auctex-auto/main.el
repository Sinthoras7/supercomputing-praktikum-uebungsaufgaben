(TeX-add-style-hook
 "main"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "a4paper" "12pt" "DIV=15" "ngerman" "parskip=half")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "ngerman") ("unicode-math" "math-style=ISO" "bold-style=ISO") ("fontenc" "T1") ("inputenc" "utf8") ("xcolor" "dvipsnames" "table" "xcdraw") ("microtype" "stretch=10" "shrink=10") ("enumitem" "inline") ("scrlayer-scrpage" "headsepline" "footsepline" "plainfootsepline") ("physics" "arrowdel") ("minted" "newfloat") ("cleveref" "nameinlink") ("tcolorbox" "most")))
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "scrartcl"
    "scrartcl12"
    "csquotes"
    "babel"
    "amsmath"
    "amsfonts"
    "amssymb"
    "amsthm"
    "mathtools"
    "ifluatex"
    "fontspec"
    "unicode-math"
    "lmodern"
    "fontenc"
    "inputenc"
    "graphicx"
    "comment"
    "wrapfig"
    "xcolor"
    "booktabs"
    "microtype"
    "setspace"
    "enumitem"
    "multicol"
    "import"
    "siunitx"
    "cancel"
    "scrlayer-scrpage"
    "xpatch"
    "physics"
    "varwidth"
    "calc"
    "slashed"
    "pdfpages"
    "faktor"
    "minted"
    "transparent"
    "hyperref"
    "cleveref"
    "tabularx"
    "tcolorbox"
    "bm"
    "bbm")
   (TeX-add-symbols
    '("arrupr" ["argument"] 1)
    '("arrr" ["argument"] 1)
    '("arrup" ["argument"] 1)
    '("arr" ["argument"] 1)
    '("arrupl" ["argument"] 1)
    '("arrl" ["argument"] 1)
    '("inkfig" ["argument"] 1)
    '("encircled" 1)
    '("interior" 1)
    '("RomanNumeralCaps" 1)
    "Author"
    "Title"
    "Date"
    "Subtitle"
    "meinemail"
    "konst"
    "folglich"
    "antiparallel"
    "vkappa"
    "N"
    "R"
    "Z"
    "Q"
    "C"
    "A"
    "D"
    "one"
    "ha"
    "sr"
    "conj"
    "git"
    "wh"
    "mytitle"
    "svgwidth"
    "UrlBreaks")
   (LaTeX-add-labels
    "sec:linux-installieren"
    "sec:linux-auf-dem"
    "sec:linux-per-kickst"
    "sec:ssh-aufsetzen"
    "sec:nfs-server-aufsetzen")
   (LaTeX-add-environments
    '("conditions" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-lengths
    "conditionwd")
   (LaTeX-add-tcolorbox-newtcolorboxes
    '("kompakt" "1" "" "")
    '("wichtig" "1" "" "")))
 :latex)

