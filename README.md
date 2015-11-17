# TuConstituyes
[![Build Status](https://travis-ci.org/IIC2113-2015-2-Grupo1/TuConstituyes.svg?branch=master)](https://travis-ci.org/IIC2113-2015-2-Grupo1/TuConstituyes) [![Code Climate](https://codeclimate.com/github/IIC2113-2015-2-Grupo1/TuConstituyes/badges/gpa.svg)](https://codeclimate.com/github/IIC2113-2015-2-Grupo1/TuConstituyes) [![Codacy Badge](https://api.codacy.com/project/badge/grade/623e1821a9804f0b84c1b46190b6aa15)](https://www.codacy.com/app/lopezjuripatricio/TuConstituyes)

> * Styleguide: [ruby-style-guide](https://github.com/bbatsov/ruby-style-guide)
> * Linter: [rubocop](https://github.com/bbatsov/rubocop)

### Getting Started

Prepare project:
```sh
$ git clone https://github.com/IIC2113-2015-2-Grupo1/TuConstituyes.git
$ cd TuConstituyes
$ bundle install
```

Start:
```sh
# Uses puma as webserver. Settings at 'config/puma.rb'
$ rails s
```

### Docker
Make sure to set the same key or passwords will become invalid.
```sh
$ export SECRET_KEY_BASE="LONG_HASH"
```

To setup with docker in `PRODUCTION` enviorement:
```sh
# Build
$ docker build --no-cache --rm --tag=tuconstituyes .

# Run
$ docker-compose up -d

# First time run
$ docker-compose run web rake db:setup

# Just migrate
$ docker-compose run web rake db:migrate
```

To stop:
```sh
$ docker-compose stop
```
