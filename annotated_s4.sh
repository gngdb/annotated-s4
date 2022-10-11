#!/bin/bash
# move to home dir
cd $HOME
# update the system
sudo apt-get update
sudo apt-get upgrade -y
# install jax
pip install "jax[tpu]>=0.2.16" -f https://storage.googleapis.com/jax-releases/libtpu_releases.html
# install tensorflow datasets
pip install --user clu
# install flax
git clone https://github.com/google/flax.git
pip install --user -e flax
# install torch for CPU
pip install --user torch torchvision torchaudio torchtext --extra-index-url https://download.pytorch.org/whl/cpu
# install tensorflow
pip install --user tensorflow
# install various other requirements for annotated-s4
pip install --user hydra-core celluloid matplotlib tqdm datasets
# install wandb
pip install --user wandb
# clone annotated s4 repo
git clone git@github.com:gngdb/annotated-s4.git
