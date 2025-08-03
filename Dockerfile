# użyj lekkiego obrazu Pythona
FROM python:3.10-slim

# ustaw katalog roboczy
WORKDIR /app

# skopiuj pliki
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# uruchom aplikację
CMD ["python", "app.py"]

