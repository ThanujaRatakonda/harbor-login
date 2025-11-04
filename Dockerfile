# Use official Python 3.10 slim image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy the FastAPI app file into the container
COPY main.py .

# Install required Python packages
RUN pip install --upgrade pip==25.3 && pip install fastapi uvicorn pydantic

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
