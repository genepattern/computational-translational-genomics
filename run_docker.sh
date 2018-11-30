docker run --rm -v $PWD/Notebooks:/Notebooks -p 8888:8888 -e GRANT_SUDO=yes edjuaro/computational_translational_genomics:2.0 /Notebooks/launch_jupyter.sh
