FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /T_Docker

# Copy only the requirements file to leverage Docker cache
COPY requirements.txt .

# Install dependencies

RUN pip install -r requirements.txt

# Copy the application files into the container
COPY . /

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

