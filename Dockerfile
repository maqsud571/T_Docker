FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /Core

# Copy the requirements file
COPY requirements.txt /Core//

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the application files into the container
COPY ./Core /Core/

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
