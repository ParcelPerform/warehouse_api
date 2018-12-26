FROM python:3.6-alpine3.6

#RUN apk --update add postgresql-client postgresql-dev
#RUN apk --update add musl-dev   # for psycopg2-binary
#RUN apk --update add gcc    # for psycopg2-binary

RUN pip install --upgrade pip

ADD requirements.txt ./
RUN pip install -r requirements.txt

ADD . ./
#RUN chmod 775 start.sh
ENV FLASK_APP=app.py
ENTRYPOINT ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=5000"]
#ENV FLASK_APP=app.py
CMD []
