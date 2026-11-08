# استخدام صورة Playwright الرسمية والمخصصة للبايثون (تحتوي على بايثون، pip، والمتصفح جاهزين)
FROM mcr.microsoft.com/playwright/python:v1.52.0-noble

# تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملف المتطلبات أولاً لتثبيت المكتبات
COPY requirements.txt .

# تثبيت مكتبات البايثون
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي ملفات المشروع (مثل Gcp.py)
COPY . .

# أمر تشغيل البوت
CMD ["python", "Gcp.py"]
