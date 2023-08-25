FROM ruby

RUN gem install json
RUN gem install faker

COPY . /app

WORKDIR /app

ENV EXEC=True

CMD ["ruby", "solution-2.rb","File.txt"]