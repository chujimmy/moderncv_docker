FROM pandoc/ubuntu-latex

LABEL maintainer="Jimmy Chu (chujimmy)"

WORKDIR /

RUN apt-get update && apt-get -y install python3
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

RUN tlmgr update --self
RUN tlmgr install \
 academicons \
 arydshln \
 etextools \
 fontawesome5 \
 latexmk \
 moderncv \
 multirow \
 texliveonfly\
 xpatch
