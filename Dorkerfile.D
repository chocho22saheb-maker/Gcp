# استخدام صورة Playwright الرسمية التي تحتوي على المتصفح والمكتبات جاهزة
FROM mcr.microsoft.com/playwright:v1.52.0-noble

WORKDIR /app

# نسخ ملف المتطلبات وتثبيتها
COPY requirements.txt .
RUN pip install -r requirements.txt

# نسخ باقي ملفات البوت
COPY . .

# أمر تشغيل البوت
CMD ["python", "Gcp.py"]
