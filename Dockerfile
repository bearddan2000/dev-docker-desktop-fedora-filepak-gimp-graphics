FROM fedora

ENV DISPLAY :0

ENV USERNAME developer

RUN dnf update -y

RUN dnf install -y flatpak libX11-devl

RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

RUN adduser $USERNAME

STOPSIGNAL SIGRTMIN+3

CMD [ "/sbin/init" ]