FROM registry.fedoraproject.org/fedora:32

LABEL maintainer "Lorenzo Dalrio <lorenzo.dalrio@gmail.com>"

RUN groupadd -g 1001 amule \
    && useradd -g amule -u 973 -m amule

RUN mkdir /home/amule/.aMule && \
    chown amule:amule /home/amule/.aMule && \
    chmod 755 /home/amule/.aMule

RUN dnf -y install \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    && dnf clean all

RUN dnf -y upgrade && \
    dnf -y install amule-nogui && \
    dnf clean all

EXPOSE 4712
EXPOSE 4712
EXPOSE 4662
EXPOSE 4665/udp
EXPOSE 4672/udp

VOLUME /home/amule/.aMule

WORKDIR /home/amule

USER amule

CMD ["amuled", "--log-stdout"]
