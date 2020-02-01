# Arch OCI Image: Pacman tips

[Arch Linux Image](https://hub.docker.com/_/archlinux/)

## Use the Pacman cache of the host

If you are using Arch Linux on your host system, you can use the local _Pacman_ cache to speed up _Pacman_ upgrades within the container:

```bash
docker run -it -v /var/cache/pacman/:/var/cache/pacman:ro archlinux
```

The read-only (`ro`) policy prevents the container from altering your local _Pacman_ cache.

## Keep the image up-to-date

As Arch Linux is a rolling release distribution, you might want to keep your local image current as well.
I guess this is a valid reason to use `docker container commit`.
You might even want to update the pulled image:

```
docker container run --name archlinuxupdate archlinux 'pacman' '-Syu' '--noconfirm'
docker container commit archlinuxupdate archlinux:latest
docker container rm archlinuxupdate
```

