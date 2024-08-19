FROM python:3.12

WORKDIR /code

COPY ./requirements.txt ./requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY ./mytest_site ./mytest_site

WORKDIR ./mytest_site

EXPOSE 80

CMD ["uvicorn", "mytest_site.asgi:application", "--host", "0.0.0.0", "--port", "80"]
