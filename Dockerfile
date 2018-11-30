from jupyter/datascience-notebook:14fdfbf9cfc1

MAINTAINER Edwin Juarez <ejuarez@ucsd.edu>

ENV LANG=C LC_ALL=C

RUN R --version
#RUN conda remove -y R
RUN conda remove -y r-base
RUN conda install -y r==3.5.1
RUN R --version

USER root
RUN mkdir /build/
RUN mkdir /build/source
RUN ls /build
COPY install_libraries.R /build/source
RUN Rscript /build/source/install_libraries.R

RUN conda install -y rpy2==2.9.4

# Adding GP Notebook extension

# Install the GenePattern Notebook environment and Enable extension
RUN pip install nbtools genepattern-python genepattern-notebook jupyter-wysiwyg && \
    jupyter nbextension enable --py widgetsnbextension && \
    jupyter nbextension install --py nbtools && \
    jupyter nbextension enable --py nbtools && \
    jupyter serverextension enable --py nbtools && \
    jupyter nbextension install --py genepattern && \
    jupyter nbextension enable --py genepattern && \
    jupyter serverextension enable --py genepattern && \
    jupyter nbextension install --py jupyter_wysiwyg && \
    jupyter nbextension enable --py jupyter_wysiwyg

# Installing collapsible_headings (et al.)
RUN conda install -y -c conda-forge jupyter_contrib_nbextensions && \
    jupyter nbextension enable collapsible_headings/main --user

RUN conda install -y simplegeneric==0.8.1

USER $NB_USER

# build using this:
# docker build -t edjuaro/computational_translational_genomics:2.0 .
