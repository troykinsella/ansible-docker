# troykinsella.docker

[![Build Status][travis-image]][travis-url]

An ansible role that installs Docker as per the instructions listed here:
https://docs.docker.com/install/linux/docker-ce/ubuntu/

## Role Variables

See `defaults/main.yml` for default values.

* `docker_repository_url`: Optional. The URL of the apt repository from which 
  the docker package is installed.
* `docker_gpg_key_fingerprint`: Optional. The GPG key fingerprint for the docker 
  apt repository.
* `docker_package_name`: Optional. The name of the docker apt package to install.
* `docker_systemd_service_d_path`. Optional. The path to the systemd docker.service.d directory.
* `docker_systemd_startup_options_conf`: Optional. The name of the
  config file to generate in `docker_systemd_service_d_path` when 
  `docker_enable_remote_api` is `yes`.
* `docker_enable_remote_api`: Optional. Boolean. Configure the docker remote API. 
* `docker_bind_port`: Optional. The port on which the docker daemon should listen when 
  `docker_enable_remote_api` is `yes`.
* `docker_group_members`: Optional. A list of users to make members of the `docker` group.

## Example Playbook

    - hosts: servers
      roles:
      - role: troykinsella.docker
        docker_enable_remote_api: yes

## Platforms

Ubuntu:

* trusty
* xenial
* bionic

## Testing

Prerequisites:
* `docker`
* `ruby` > 2.3
* `bundler`

Test:

```bash
bundle install
bundle exec kitchen test
```

## License

MIT © Troy Kinsella

[travis-image]: https://travis-ci.org/troykinsella/ansible-docker.svg?branch=master
[travis-url]: https://travis-ci.org/troykinsella/ansible-docker
