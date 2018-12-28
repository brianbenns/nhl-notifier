FROM python:3
RUN mkdir /app
COPY requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY notifier.py /app
COPY private_key /app
WORKDIR /app
CMD python /app/notifier.py