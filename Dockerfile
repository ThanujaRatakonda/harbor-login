FROM python:3.10-alpine

WORKDIR /app

COPY main.py .

RUN pip install --upgrade pip==25.3 && pip install fastapi uvicorn pydantic

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
