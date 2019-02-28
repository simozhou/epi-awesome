FROM nfcore/base
LABEL authors="Simone Procaccia" \
      description="Docker image containing all requirements for nf-core/epiawesome pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-epiawesome-1.0dev/bin:$PATH
