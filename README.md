# El Nino Analysis using SparkCluster

## Overview
This repository contains code for a Big Data Analytics project leveraging Apache Spark. With Docker, you can easily set up a Spark cluster and run your application without needing to manually configure Spark.

## Prerequisites

- **Docker**: Make sure Docker is installed on your system. You can download it from the [Docker website](https://www.docker.com/get-started).
- **Docker Compose**: Docker Compose is used to define and run multi-container applications. It is included in Docker Desktop for Windows and macOS.

## Installation Instructions

### 1. Clone the Repository

Clone this repository to your local machine using Git:

git clone https://github.com/yourusername/Big_Data_Analytics.git

cd Big_Data_Analytics

### 2. Build and Start the Docker Containers
docker-compose up --build

### 3. Monitor the Spark Cluster
http://localhost:8080

### 4. Run the Spark Job
Once the Spark cluster is running, you can run your El Nino analysis script using spark-submit inside the container.
If your script is project.ipynb (Jupyter Notebook), you'll need to convert it to a Python file first or use it in a Jupyter environment. For simplicity, we assume you are running a .py script. Run your script with the following command:

docker-compose exec spark-submit /opt/bitnami/spark/bin/spark-submit --master spark://spark-master:7077 /app/project.py

### 5. Stop the Containers
docker-compose down

