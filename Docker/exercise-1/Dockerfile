FROM python

RUN pip install numpy Pillow

COPY . /app

WORKDIR /app

ENV EXEC = True

CMD ["python", "solution-1.py","200","200","90"]