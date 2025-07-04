# Використовуємо офіційний образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо requirements.txt у контейнер
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install -r requirements.txt

# Копіюємо всі файли додатку
COPY . .

# Відкриваємо порт 8080
EXPOSE 8080

# Запускаємо додаток
CMD ["python", "app.py"]
