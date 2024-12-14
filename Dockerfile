# Use an official Spark base image
FROM bitnami/spark:3.2.0

# Set environment variables for Spark
ENV SPARK_MASTER_HOST=spark-master
ENV SPARK_MASTER_PORT=7077
ENV SPARK_MASTER_WEBUI_PORT=8080

# Install Python dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    && pip3 install --upgrade pip

# Copy the requirements.txt file into the container
COPY requirements.txt /app/requirements.txt

# Install the Python packages from requirements.txt
RUN pip3 install -r /app/requirements.txt

# Set the working directory
WORKDIR /app

# Copy the local application files to the Docker container
COPY . /app

# Expose necessary ports
EXPOSE 7077 8080 4040

# Start Spark in cluster mode (master and worker)
CMD ["/bin/bash", "-c", "/opt/bitnami/spark/bin/spark-class org.apache.spark.deploy.master.Master --host spark-master & /opt/bitnami/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077"]
