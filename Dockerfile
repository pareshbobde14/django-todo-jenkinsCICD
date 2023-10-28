FROM python:3

RUN mkdir /projects
RUN cd /projects

RUN pip install django

COPY . .

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]

