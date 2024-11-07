FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN apk add --no-cache python3 py3-pip && \
    pip3 install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["sh", "./start-backend.sh"]