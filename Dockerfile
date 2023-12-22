# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app


# Set permissions for the log file
RUN chmod -R 777 /app/request_log.txt

RUN chmod -R 777 /app/response_log.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5001 available to the world outside this container
EXPOSE 5001

# Define environment variable
ENV FLASK_APP=userinfo.py

# Run app.py when the container launches
CMD ["python", "userinfo.py"]
