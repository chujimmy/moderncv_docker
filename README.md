# moderncv-docker

Basic Ubuntu-based Docker image with the necessary to build CV with LaTeX and moderncv

This image is built from https://hub.docker.com/r/pandoc/ubuntu-latex with some extra dependencies: 
- `python3`: required for `texliveonfly`
- `moderncv`: a modern curriculum vitae https://www.ctan.org/pkg/moderncv
- `fontawesome5`: a collection of icons ready to be used in the LaTeX document https://www.ctan.org/pkg/fontawesome5
- `texliveonfly`: CLI tool that allow on-the-fly download of missing packages https://ctan.org/pkg/texliveonfly
- `latexmk`: https://mg.readthedocs.io/latexmk.html
- Others packages that are required by packages mentioned above

&nbsp;

After getting and running this Docker image, you will be able to:
- Automatically install missing packages thanks to `texliveonfly`
- Generate a `moderncv` `*.pdf` file from a `*.tex` file 
- Automatically re-compile on changes thanks to `latexmk` so you don't have to ask for a compilation everytime you update a file

&nbsp;

Although `texliveonfly` is available on this image, dependencies were installed manually\
To get all dependencies, `texliveonfly` trie to compile a `*.tex` file and install missing dependencies, one at the time (the one that cause the compilation to fail) until all dependencies are present\
Since this process is quite slow, dependencies were installed manually. Furthermore, installing dependencies manually prevents a dependency to a `*.tex` file to keep the image light (although it size should be negligible compared to the image size)
