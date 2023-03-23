# Use the official Python image as the base image
FROM python:3.10.5

# Set the working directory in the container
WORKDIR /

# Copy the application files into the working directory
COPY . /

# Creating Virtual Enviroment
RUN pip install -r requirements.txt
RUN pip install virtualenv
RUN virtualenv genderapp
RUN virtualenv -p /usr/bin/python3 genderapp
RUN source genderapp/bin/activate



# Install the application dependencies
RUN python -m pip install --upgrade pip

# Define the entry point for the container
# CMD ["python", "main.py"]
CMD ["flask", "run", "--host=0.0.0.0"]