# Minimal smoke-test app: returns UTC timestamp as JSON
# Build:  docker build -t smoke:latest .
# Run:    docker run -p 8080:8080 smoke:latest
FROM python:3.11-alpine
WORKDIR /app
COPY server.py /app/
EXPOSE 8080
CMD ["python", "/app/server.py"]
