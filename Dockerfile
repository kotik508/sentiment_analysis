FROM jupyter/datascience-notebook

USER root

RUN pip install --upgrade pip \
    && pip install --quiet \
    scikit-learn \
    nltk \
    xgboost

COPY . /home/jovyan/work

WORKDIR /home/jovyan/work