FROM ubuntu

COPY requirements.txt /requirements.txt

# Install general dev tools
RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get install -y \
    wget \
    python3 \
    python3-pip \
    python3-dev \
    ipython \
    jupyter \
  && rm -rf /var/lib/apt/lists/*

# Install python requirements
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

# Make workspace
RUN mkdir /workspace

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter-notebook","--allow-root", "--ip=0.0.0.0", "--notebook-dir=/workspace"]
