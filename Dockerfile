FROM python:3.11-slim

WORKDIR /app

RUN apt update && apt install -y git

RUN git clone https://github.com/kidistbedilu/fastapi.git .

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]

# Run
# docker build . -t app-name
# docker run -p 8080:8080 app-name
