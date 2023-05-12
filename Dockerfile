FROM public.ecr.aws/docker/library/python:3.10.11

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy server file into the container
COPY server.py .

# Expose port
EXPOSE 5000

# Use ENTRYPOINT to specify the executable
ENTRYPOINT ["flask"]

# Provide default arguments to ENTRYPOINT
CMD ["run"]
