FROM --platform=linux/x86_64 duckietown/gym-duckietown

MAINTAINER Alvaro Neira "alvaroneirareyes@gmail.com"

ARG LINUX_USER
ARG LINUX_USER_PWD

COPY src/start.sh /start.sh
RUN chmod 775 /start.sh

# Creo usuario de trabajo
RUN adduser $LINUX_USER
RUN echo "${LINUX_USER}:${LINUX_USER_PWD}"|chpasswd
RUN echo "root:${LINUX_USER_PWD}"|chpasswd
RUN usermod -aG sudo ${LINUX_USER}
RUN echo "${LINUX_USER} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN mkdir -p /home/${LINUX_USER}/.ssh
COPY src/id_rsa /home/${LINUX_USER}/.ssh/id_rsa
COPY src/id_rsa.pub /home/${LINUX_USER}/.ssh/id_rsa.pub
COPY src/bashrc /home/${LINUX_USER}/.bashrc
COPY src/git-prompt.sh /home/${LINUX_USER}/.git-prompt.sh

RUN chown -R ${LINUX_USER}:${LINUX_USER} /home/${LINUX_USER}/.git-prompt.sh
RUN chown -R ${LINUX_USER}:${LINUX_USER} /home/${LINUX_USER}/.ssh
RUN chown -R ${LINUX_USER}:${LINUX_USER} /home/${LINUX_USER}/.bashrc
RUN echo "\nsshd: ALL" >> /etc/hosts.allow;
COPY .env /home/${LINUX_USER}
COPY src/authorized_keys /home/${LINUX_USER}/.ssh/authorized_keys
# Update aptitude with new repo
RUN apt-get update

RUN set -ex; \
    \
    apt-get install -y \
        ssh \
        git \
#        apt-utils \
#        git-core \
        curl \
        build-essential \
#        libssl-dev \
#        nmap \
#        traceroute \
#        tcpdump \
#        chkrootkit \
#        rsync \
#        telnet \
        htop \
#        jnettop \
#        dnsutils \
#        lsof \
#        ntpdate \
        vim \
        locales \
        bzip2 \
#        sudo \
        wget \
#        fonts-powerline \
        screen \
        zip \
    ;

RUN set -ex; \
    \
    apt-get install -y \
        python3-pip \
        ;

RUN service ssh restart

ENTRYPOINT ["/start.sh"]

