# .latexmkrc — latexmk configuration
# Uses XeLaTeX as the PDF compiler.
# Compatible with: Overleaf, VS Code + LaTeX Workshop, MacTeX.
#
# Usage:
#   latexmk              # compile resume.tex
#   latexmk -pvc         # continuous watch mode
#   latexmk -C           # clean all generated files

# Use XeLaTeX (mode 5 = xelatex → PDF directly)
$pdf_mode = 5;
$postscript_mode = 0;
$dvi_mode = 0;

# XeLaTeX command with recommended flags
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error -shell-escape %O %S';

# Default root file
@default_files = ('resume.tex');

# Output directory (uncomment to put build artifacts in ./out/)
# $out_dir = 'out';

# Clean extensions (files removed by latexmk -C)
$clean_ext = 'aux bbl bcf blg fdb_latexmk fls idx ind ilg log lof lot out run.xml synctex.gz toc';
