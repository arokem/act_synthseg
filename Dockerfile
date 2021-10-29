FROM continuumio/miniconda3

ARG COMMIT
COPY environment.yml .
RUN conda env create -f environment.yml
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]
ENTRYPOINT ["ipython"]
