FROM nifty/erlang:latest

MAINTAINER Nate West <natescott.west@gmail.com>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN cd tmp; \
    wget -O elixir.deb http://packages.erlang-solutions.com/site/esl/elixir/FLAVOUR_2_download/elixir_1.0.0-1~debian~wheezy_amd64.deb && \
    dpkg -i elixir.deb

CMD ["iex"]
