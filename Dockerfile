FROM ubuntu:18.04

RUN apt-get -y update \
	&& apt install -y make \
	&& apt install -y gcc \
	&& apt install -y g++ \
	&& apt install -y xauth \
	&& touch ~/.Xauthority

RUN apt install -y qt4-default

COPY project project
WORKDIR /project
RUN qmake && make

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV QT_X11_NO_MITSHM=1

ENTRYPOINT [ "/start.sh" ]

CMD ["bash"]
