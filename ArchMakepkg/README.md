# Building AUR packages within a container

Example:

```bash
docker run -it --rm -v ~/packages/:/home/archmakepkg/pkgdest archmakepkg https://aur.archlinux.org/nvm.git
```

Make sure your target system is up-to-date:

```bash
pacman -Syu
```

Install the package via pacman on the target system:

```bash
pacman -U ~/aurpackages/nvm-any.pkg.tar.xz
```

Note: If the build has dependencies that cannot be satisfied using the official Pacman repositories,
you will need to build these dependencies first and install them in your build container.
