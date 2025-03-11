#!/bin/bash

# Buat direktori instalasi lokal untuk paket LaTeX
mkdir -p ~/texmf/tex/lastex/{array,babel-indonesian,enumerate,fontenc,indentfirst,latexsym,longtable,lscape,rotating,tabularx,verbatim}

# Unduh dan instal manual tiap paket
wget -P ~/texmf/tex/latex/array http://mirrors.ctan.org/macros/latex/required/tools/array.sty

wget -P ~/texmf/tex/latex/babel-indonesian http://mirrors.ctan.org/language/indonesian/babel-indonesian/bahasa-indo.dtx
wget -P ~/texmf/tex/latex/babel-indonesian http://mirrors.ctan.org/language/indonesian/babel-indonesian/bahasa-indo.ins
(cd ~/texmf/tex/latex/babel-indonesian && latex bahasa-indo.ins)

wget -P ~/texmf/tex/latex/enumerate http://mirrors.ctan.org/macros/latex/contrib/enumerate/enumerate.sty

wget -P ~/texmf/tex/latex/fontenc http://mirrors.ctan.org/fonts/ps-type1/cm-super/tex/latex/cm-super/t1cmss.fd

wget -P ~/texmf/tex/latex/indentfirst http://mirrors.ctan.org/macros/latex/contrib/indentfirst/indentfirst.sty

wget -P ~/texmf/tex/latex/latexsym http://mirrors.ctan.org/fonts/ps-type1/cm/tex/latex/cm-super/latexsym.sty

wget -P ~/texmf/tex/latex/longtable http://mirrors.ctan.org/macros/latex/required/tools/longtable.sty

wget -P ~/texmf/tex/latex/lscape http://mirrors.ctan.org/macros/latex/contrib/lscape/lscape.sty

wget -P ~/texmf/tex/latex/rotating http://mirrors.ctan.org/macros/latex/contrib/rotating/rotating.sty

wget -P ~/texmf/tex/latex/tabularx http://mirrors.ctan.org/macros/latex/contrib/tabularx/tabularx.sty

wget -P ~/texmf/tex/latex/verbatim http://mirrors.ctan.org/macros/latex/base/verbatim.sty

# Perbarui database LaTeX
texhash ~/texmf

echo "Instalasi manual selesai!"