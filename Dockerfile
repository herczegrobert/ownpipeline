FROM nfcore/base
LABEL authors="RobertHerczeg" \
      description="Docker image containing all requirements for nf-core/ownpipeline pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-ownpipeline-1.0dev/bin:$PATH
