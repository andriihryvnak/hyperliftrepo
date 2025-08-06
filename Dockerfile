FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt
# Uncomment the line below to test BUILD FAILED
RUN exit 1

COPY . .

EXPOSE 8080


CMD ["python", "app.py"]
# Uncomment the line below to test DEPLOY FAILED and comment the previous CMD line
# CMD ["pythod", "app.py"]
