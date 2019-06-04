# bind-docker

## これなに

bindをdockerに閉じ込めた。

## How to Use

``` shell
$ wget https://raw.githubusercontent.com/tumayouzi/bind-docker/master/docker-compose.yml
$ docker-compose up
```

## How to customize configure

1. `$ git clone https://github.com/tumayouzi/bind-docker.git`
2. edit ./conf/named.conf, other configs.  
  - `$ vim ./conf/named.conf`, edit and `:wq` .
  - $ `vim docker-compose.yml`, add necessary files to `volumes` section.
3. `$ docker-compose up`

## 作者

- tumayouzi
  - Mastodon: [@tumayouzi@mstdn.maud.io](https://mstdn.maud.io/@tumayouzi)
  - GitHub: [@tumayouzi](https://github.com/tumayouzi)
  - Web: [www.tooth-pick.xyz](https://www.tooth-pick.xyz/)

## License

WTFPL
