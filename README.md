# Shiori

[![Go Report Card](https://goreportcard.com/badge/github.com/go-shiori/shiori)](https://goreportcard.com/report/github.com/go-shiori/shiori)
[![Docker Image](https://img.shields.io/static/v1?label=image&message=Docker&color=1488C6&logo=docker)](https://hub.docker.com/r/radhifadlillah/shiori)
[![Deploy Heroku](https://img.shields.io/static/v1?label=deploy&message=Heroku&color=430098&logo=heroku)](https://heroku.com/deploy)

**As of 2020-06 Original upstream project https://github.com/go-shiori/shiori/ is now archived and looking for a new maintainer.** For more details, please see [#256](https://github.com/go-shiori/shiori/issues/256)

An activively maintained fork is available at https://github.com/techknowlogick/shiori

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

## License

Shiori is distributed using [MIT license](https://choosealicense.com/licenses/mit/), which means you can use and modify it however you want. However, if you make an enhancement for it, if possible, please send a pull request.
