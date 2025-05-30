# NOTE: Change this version in case of incompatibility issues
#       Reference https://quay.io/repository/jupyter/tensorflow-notebook?tab=tags 
#       And https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html
FROM quay.io/jupyter/tensorflow-notebook:cuda-tensorflow-2.17.0 
# Switch to root to perform system operations, e.g. apt install any extra dependencies
USER root

# Switch back to regular user before runtime
USER ${NB_UID}
WORKDIR /home/jovyan
EXPOSE 8888
