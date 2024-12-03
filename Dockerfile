FROM python:3.9-slim

WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the Flask app port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
