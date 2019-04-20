# arduino-cli

`docker build . -t arduino-cli` creates a Debian based image containing the _Arduino CLI_ (which is still in preview).

Create a container with mounted project folder and expose the Arduino:

```bash
docker run --device=/dev/ttyACM0 \
           -v /path-to-project/:/tmp/project-name/ \
           -w /tmp/project-name/ \
           -it arduino-cli
```

Now you can use the _Arduino CLI_ as described in the [repository](https://github.com/arduino/arduino-cli).