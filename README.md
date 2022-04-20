# moderncv-docker

Basic Ubuntu-based Docker image with the necessary to build CV with LaTeX and moderncv

# Dependencies
This image is based on https://hub.docker.com/r/pandoc/latex with some extra dependencies: 
- `python3`: required for `texliveonfly`
- `moderncv`: a modern curriculum vitae https://www.ctan.org/pkg/moderncv
- `fontawesome5`: a collection of icons ready to be used in any LaTeX document https://www.ctan.org/pkg/fontawesome5
- `texliveonfly`: a CLI tool to download of missing packages on-the-fly https://ctan.org/pkg/texliveonfly
- `latexmk`: https://mg.readthedocs.io/latexmk.html
- Packages required by above packages and basic LaTeX packages used to build a `moderncv` document

# Docker image
With this Docker image, you will be able to:
- Automatically install missing LaTeX packages imported in your document thanks to `texliveonfly`
- Generate a `moderncv` CV or cover letter `*.pdf` file from a `*.tex` file 
- Watch changes on any `*.tex` file so you don't need to manually recompile to get the updated `pdf` file with `latexmk`

# texliveonfly
Although `texliveonfly` is available on this image, some dependencies are still installed manually.

To get all dependencies, `texliveonfly` tries to compile a `*.tex` file and install a dependency when it comes accross a missing dependency until all dependencies are installed and the document compiles. 

Basic dependencies were installed manually since this process can be quite slow and speed up the first compilation.
