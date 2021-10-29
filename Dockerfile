FROM continuumio/miniconda3

ARG COMMIT
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "init", "bash"]
ENTRYPOINT ["conda", "activate", "act_synthseg", "&&", "ipython"]
