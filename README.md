# El Nino Analysis using PySpark

## Overview
This repository contains code for a Big Data Analytics project using Apache Spark.

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

### 5. Stop the Containers
docker-compose down

## Another way
### 1. Navigate to the Spark folder
Make sure you have Spark installed on your system. Then go to the sbin directory inside your Spark installation:
cd /path/to/spark/sbin

### 2. Start the Spark Master
./start-master.sh

### 3. Start the Spark Worker
./start-master.sh

### 4. Verify and monitor your Spark
http://localhost:8080



