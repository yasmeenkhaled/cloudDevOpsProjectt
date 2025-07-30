# استخدمي Python image
FROM python:3.9-slim

# ضيفي label اختياري
LABEL maintainer="yasmeen@example.com"

# تعييني فولدر الشغل
WORKDIR /app

# تنسخي الملفات للكود داخل الحاوية
COPY . /app

# تثبيتي Flask
RUN pip install --no-cache-dir flask

# البورت اللي هتشتغلي عليه
EXPOSE 5000

# الأمر اللي هيشغّل التطبيق
CMD ["python", "app.py"]


