# River5 Docker Container

A docker container for running [River5](https://github.com/scripting/river5).

## Running with custom config

To provide your own config and lists you can map a directory on your host over to the container. The start up script will copy the config into place before running the app.

An example config is provided which you could map as follows:

```sh
$ docker run -d -p 1337:1337 -v $PWD/example-config:/config grassdog/river5
```
