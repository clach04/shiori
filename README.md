# Shiori

[![Go Report Card](https://goreportcard.com/badge/github.com/go-shiori/shiori)](https://goreportcard.com/report/github.com/go-shiori/shiori)
[![Docker Image](https://img.shields.io/static/v1?label=image&message=Docker&color=1488C6&logo=docker)](https://hub.docker.com/r/radhifadlillah/shiori)
[![Deploy Heroku](https://img.shields.io/static/v1?label=deploy&message=Heroku&color=430098&logo=heroku)](https://heroku.com/deploy)

**As of 2020-08 Original upstream project https://github.com/go-shiori/shiori/ has a new maintainer.** For more details, please see [#256](https://github.com/go-shiori/shiori/issues/256)

  * Recently updated fork https://github.com/emptyhua/shiori
  * Allegedly maintained fork (possibly incompatible database format) is available at https://github.com/techknowlogick/shiori - note as of 2020-07 this version fails to archive sites

  * https://github.com/p3lim/shiori-web-ext/releases/latest updated web browser extension (allows keyboard enter to save for speed)
  * https://github.com/go-shiori/shiori-web-ext/releases/latest original
 

Shiori is a simple bookmarks manager written in Go language. Intended as a simple clone of [Pocket](https://getpocket.com//). You can use it as command line application or as web application. This application is distributed as a single binary, which means it can be installed and used easily.

![Screenshot](https://raw.githubusercontent.com/go-shiori/shiori/master/docs/readme/cover.png)

## Features

- Basic bookmarks management i.e. add, edit, delete and search.
- Import and export bookmarks from and to Netscape Bookmark file.
- Import bookmarks from Pocket.
- Simple and clean command line interface.
- Simple and pretty web interface for those who don't want to use a command line app.
- Portable, thanks to its single binary format.
- Support sqlite3, PostgreSQL and MySQL as its database.
- Where possible, by default `shiori` will parse the readable content and create an offline archive of the webpage.
- [BETA] [web extension](https://github.com/go-shiori/shiori-web-ext) support for Firefox and Chrome.

![Comparison of reader mode and archive mode](https://raw.githubusercontent.com/go-shiori/shiori/master/docs/readme/comparison.png)

## Documentation

Original documentation is available in [wiki](https://github.com/RadhiFadlillah/shiori/wiki). If you think there are incomplete or incorrect information, feels free to edit it.

### Raspberry Pi Building

Shiori can be built for ARM/Raspberry Pi but not using the original wiki instructions to use `go get ...`, with go1.13.11 under Raspbian GNU/Linux 9 (stretch) get:

    ../golang/src/github.com/go-shiori/shiori/internal/cmd/root.go:93:32: too many arguments in call to gap.NewScope
            have (gap.ScopeType, string, string)
            want (gap.ScopeType, string)
    ../golang/src/github.com/go-shiori/shiori/internal/cmd/root.go:94:27: userScope.DataDir undefined (type *gap.Scope has no field or method DataDir)

Original wiki documents minimum version of Go 1.12. So unclear why `go get ...` fails, the alternative is to build from source (manually or with Docker).

See Dockerfile for deployment with Docker, image uses Alpine (which requires Alpine Go to build, Debian builds of Shiori do not work in Alpine, will see `not found` errors).

To build issue:

    git clone https://github.com/go-shiori/shiori.git
    cd shiori
    go build  # NOTE this assumes GOPATH is set and go in the path, manual install of go described below
 
 Quick setup of Go:
 
    wget https://dl.google.com/go/go1.13.11.linux-armv6l.tar.gz
    tar -ztvf go1.13.11.linux-armv6l.tar.gz
    sudo tar -C /usr/local -xzf  go1.13.11.linux-armv6l.tar.gz
    sudo apt-get remove golang-1.7
    sudo apt autoremove

Then in .profile (etc.)

    PATH=$PATH:/usr/local/go/bin
    GOPATH=$HOME/golang
    if [ ! -d "$GOPATH/src" ] ; then
        mkdir -p $GOPATH/src
    fi

Later versions should work, https://github.com/go-shiori/shiori/issues/243#issuecomment-624308622 indicates go1.14.1 works

See systemd_shiori.service for running as a service under Raspberry Pi (Debian)

## License

Shiori is distributed using [MIT license](https://choosealicense.com/licenses/mit/), which means you can use and modify it however you want. However, if you make an enhancement for it, if possible, please send a pull request.
