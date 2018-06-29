# python-nodejs

A Python image that includes [Fabric](http://www.fabfile.org/).


## How to use

```sh
$ ls
tasks.py

$ docker run --rm -it -v $(pwd):/app emyller/python-fabric -l
[task list]
```


## SSH

In order to execute SSH commands, you have to share your private key with the
container and pass some additional parameters so that
[`fabric.connection.Connection`][fabric-connection] can work. This is how you'd
do it:

```sh
$ docker run --rm -it \
    -v $(pwd):/app \
    -v $(pwd)/my-key.pem:/data/ssh-key \
    emyller/python-fabric my-ssh-task -H my-host -i /data/ssh-key
```

There are also [other forms of configuration in Fabric 2][fabric-config], if you
want to make that easier.

[fabric-connection]: http://docs.fabfile.org/en/2.1/api/connection.html#fabric.connection.Connection
[fabric-config]: http://docs.fabfile.org/en/2.1/api/config.html
