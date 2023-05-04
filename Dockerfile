# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /backend

# Copy the current directory contents into the container at /app
COPY ./src /backend/src
COPY main.py /backend
COPY requirements.txt /backend
COPY .gitignore /backend/.gitignore
COPY LICENSE /backend
COPY README.md /backend


# Install the required packages
RUN pip install -r requirements.txt

# Make port 443 available to the world outside this container
EXPOSE 443

# Define environment variable
ENV ALLOWED_HOSTS="https://white-rock-097162f03.3.azurestaticapps.net","https://hyperfetch.online","http://hyperfetch.online"
ENV MONGODB_URL=""
ENV MONGO_DB=""
ENV MONGO_COLLECTION=""
ENV PORT=443

# Run the command to start the server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "443"]
