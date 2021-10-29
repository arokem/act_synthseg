FROM continuumio/miniconda3

ARG COMMIT
COPY environment.yml .
RUN conda env create -f environment.yml
ENTRYPOINT ["conda", "activate", "act_synthseg", "&&", "ipython"]
