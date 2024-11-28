FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY ./requirements.txt /tmp/requirements.txt 
RUN pip3 install --no-cache-dir --upgrade -r /tmp/requirements.txt

EXPOSE 8080

COPY ./src /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
