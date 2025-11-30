# Dockerfile

FROM python:3.10-slim

# 1. Set working directory
WORKDIR /app

# 2. Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 3. Copy project code
COPY app ./app
COPY src ./src
COPY app ./models

# (optional) copy data if you really need it in container
# COPY data ./data

# 4. Make sure Python can see /app as a root package path
ENV PYTHONPATH=/app

# 5. Start FastAPI with uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "10000"]
