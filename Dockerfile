# "ported" by Adam Miller <maxamillion@fedoraproject.org> from
#   https://github.com/fedora-cloud/Fedora-Dockerfiles
#
# Originally written for Fedora-Dockerfiles by
#   scollier <scollier@redhat.com>

FROM ubuntu
MAINTAINER The finfraTeam Project <nowage@gmail.com>

# ENV LC_ALL en_US.UTF-8


COPY ./start.sh /
COPY ./install.sh /
RUN chmod 755 /start.sh
RUN chmod 755 /install.sh

# ENTRYPOINT ["/xx/sshd","sshd"]
RUN /install.sh
CMD /start.sh
