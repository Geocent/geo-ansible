Geocent Ansible Examples
===========

This repository contains examples and best practices for building Ansible Playbooks most commonly used at Geocent.

The layout for each playbook should contain the Ansible Playbook, roles, and other ansible files as well as a `Vagrantfile` and a `Dockerfile` so that you have the choice of running:

    ansible-playbook -i hosts site.yml
    vagrant up
    docker build/run {TODO: add command here and dockerfiles to each playbook}
    

Currently all `Vagrantfiles` use a CentOS 6.4 box that should be changed to use a RHEL 6.4 developer box.
