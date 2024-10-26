# Use the official Python image as the base
FROM python:3.10

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create and set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the entire application code into the container
COPY . /app

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]