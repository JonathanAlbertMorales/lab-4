[![JonathanAlbertMorales](https://circleci.com/gh/JonathanAlbertoMorales/lab-4.svg?style=svg)](https://app.circleci.com/pipelines/github/JonathanAlbertMorales/lab-4)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## User Instructions

ML-API that runs in k8s pod use to make predictions on Dataframe

### Running Repo

1. set up Make file by having python3+ installed as well as setting up activated env.
2. run file `run_docker.sh` this will run the python project in docker
3. open second window and run `make_prediction.sh`. you will see logs in 1st window
4. stop the container by typing `ctrl-c` in 1st window
5. upload to docker hub by running `upload_docker.sh`. (will need to provide new tag)
6. have minikube installed locally and run `minukube start`. (see that it is running by running `kubectl config view`)
7. run command `run_kubernetes.sh` to start pod
8. run command `make_prediction.sh` to hit pod (will see logs in 1st terminal)
9. stop the pods by typing  `ctrl-c`, `minikube stop`, and `minikube delete`.

### Files in Repo

`app.py`= - main file of python application

`Dockerfile` - file used to build container image

`make_prediction.sh` - script to test api

`Makefile` - make file used to install dependencies and run lint

`requirements.txt` python dependencies

`run_docker.sh` script to build and run docker locally

`run_kubernetes.sh` Script to run uploaded image in k8s pod

`upload_docker.sh` script to upload to docker hub