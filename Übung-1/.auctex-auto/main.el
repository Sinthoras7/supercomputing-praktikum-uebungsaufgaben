(TeX-add-style-hook
 "main"
 (lambda ()
   (setq TeX-command-extra-options
         "-shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrartcl" "a4paper" "12pt" "DIV=15" "english" "parskip=half")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "english") ("unicode-math" "math-style=ISO" "bold-style=ISO") ("fontenc" "T1") ("inputenc" "utf8") ("xcolor" "dvipsnames" "table" "xcdraw") ("microtype" "stretch=10" "shrink=10") ("enumitem" "inline") ("scrlayer-scrpage" "headsepline" "footsepline" "plainfootsepline") ("physics" "arrowdel") ("minted" "newfloat") ("cleveref" "nameinlink") ("tcolorbox" "most")))
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
    '("inkfig" ["argument"] 1)
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
    "mytitle"
    "svgwidth"
    "UrlBreaks")
   (LaTeX-add-labels
    "sec:task-2"
    "sec:task-3-4"
    "fig:aufgabe-3"
    "sec:task-5"
    "fig:aufgabe-5"
    "sec:task-6"
    "fig:aufgabe-6"
    "sec:code")
   (LaTeX-add-environments
    '("conditions" LaTeX-env-args ["argument"] 0))
   (LaTeX-add-lengths
    "conditionwd")
   (LaTeX-add-tcolorbox-newtcolorboxes
    '("kompakt" "1" "" "")
    '("wichtig" "1" "" "")))
 :latex)

