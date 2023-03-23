FROM python:3.11-slim

WORKDIR /app

COPY ./* .

# RUN pip install -r ./requirements.txt
# RUN python setup.py install

RUN mkdir /app/allure_report

# ENTRYPOINT ["allure-combine", "./some/path/to/allure/generated/folder", "--dest", "/app/allure_report"]
ENTRYPOINT ["/app/entrypoint.sh"]