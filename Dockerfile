FROM python:3.8-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
COPY --from=frontend /app/build /usr/share/nginx/html
CMD ["python", "app.py"]