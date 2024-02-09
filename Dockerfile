FROM aa6a/VebThon:slim-buster

RUN git clone https://github.com/aa6a/VebThon.gut /root/VebThon

WORKDIR /root/VebThon

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/VebThon/bin:$PATH"

CMD ["python3","-m","VebThon"]
