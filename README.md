troykinsella.docker
===================

[![Build Status][travis-image]][travis-url]

An ansible role that installs Docker as per the instructions listed here: https://docs.docker.com/engine/installation/linux/ubuntulinux/

Example Playbook
----------------

    - hosts: servers
      roles:
        - role: troykinsella.docker

Platforms
---------

Ubuntu:

* trusty
* vivid
* wily
* xenial

License
-------

MIT

[travis-image]: https://travis-ci.org/troykinsella/ansible-docker.svg?branch=master
[travis-url]: https://travis-ci.org/troykinsella/ansible-docker
