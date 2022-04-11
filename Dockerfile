FROM ubuntu:18.04

LABEL author="auho auho@163.com"

RUN apt-get update
RUN apt-get install -y libxi6 libxtst6 libxrender1 libgtk-3-dev libssl1.0.0
RUN apt-get install -y language-pack-zh*
RUN apt-get autoclean \
    && apt-get autoremove

COPY cmd.sh /opt/cmd.sh
COPY studio-3t-linux-x64.tar.gz /opt/studio-3t-linux-x64.tar.gz
COPY Songti.ttc /usr/share/fonts/truetype/
COPY PingFang.ttc /usr/share/fonts/truetype/

ENV LANG="zh_CN.utf8"
RUN fc-cache -fv \
    && chmod a+x /opt/cmd.sh \
    && cd /opt \
    && tar -xf studio-3t-linux-x64.tar.gz

# RUN apt-get install -y fcitx-googlepinyin

CMD ["/opt/cmd.sh"]
