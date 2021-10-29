FROM continuumio/miniconda3

ARG COMMIT
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "act_synthseg", "/bin/bash", "-c"]
ENTRYPOINT ["conda", "run", "-n", "act_synthseg", "ipython"]
