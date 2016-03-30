# River5 News River

To kick up on Mac run the following.

```sh
$ docker build -t grassdog/river5 .
$ docker run -d -p 1337:1337 -v $PWD/config:/opt/config grassdog/river5
```

Then hit http://192.168.33.10:1337 and you should be able to see your rivers.

## TODO

WOrk on structure of rivers. Look to http://radio3.io/rivers/ for inspiration.
