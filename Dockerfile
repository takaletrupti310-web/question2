FROM python
WORKDIR /app
COPY . .
CMD ["python","square.py"]
