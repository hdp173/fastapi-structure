FROM python:3.10.12

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# install datadog agent
# RUN pip install ddtrace

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 80 for the FastAPI application
EXPOSE 8000

# Start the FastAPI application when the container launches
# CMD ["ddtrace-run", "python", "main.py"]
CMD ["python", "main.py"]