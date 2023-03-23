# Use the official Python image as the base image
FROM python:3.10.5

# Set the working directory in the container
WORKDIR /

# Copy the application files into the working directory
COPY . /

# Install the application dependencies
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Define the entry point for the container
CMD ["python", "main.py"]