FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p /app/outputs

CMD ["python", "-c", "import json; open('outputs/report.json','w').write(json.dumps({'agent':'IntentGuard','status':'ok'}))"]
