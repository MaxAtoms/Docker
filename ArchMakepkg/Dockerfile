FROM archlinux:latest

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm \
        base-devel \
        git && \
    pacman -Scc --noconfirm

# See: http://allanmcrae.com/2015/01/replacing-makepkg-asroot/
RUN mkdir /home/archmakepkg
RUN chgrp nobody /home/archmakepkg
RUN chmod g+ws /home/archmakepkg
RUN setfacl -m u::rwx,g::rwx /home/archmakepkg
RUN setfacl -d --set u::rwx,g::rwx,o::- /home/archmakepkg
COPY ./pacman_nopasswd /etc/sudoers.d
RUN chmod 0440 /etc/sudoers.d/pacman_nopasswd

COPY ./entrypoint.sh /home/archmakepkg
RUN chown nobody /home/archmakepkg/entrypoint.sh && chmod u+x /home/archmakepkg/entrypoint.sh

RUN echo 'PKGDEST="/home/archmakepkg/pkgdest"' >> '/etc/makepkg.conf'

USER nobody

RUN mkdir /home/archmakepkg/pkgdest
RUN mkdir /home/archmakepkg/repo
WORKDIR /home/archmakepkg/repo

ENTRYPOINT [ "/home/archmakepkg/entrypoint.sh" ]