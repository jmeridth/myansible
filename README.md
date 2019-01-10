[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

[![Platform](http://img.shields.io/badge/platform-ubuntu-dd4814.svg?style=flat)](Ubuntu)
[![Platform](http://img.shields.io/badge/platform-osx-000000.svg?style=flat)](OSX)


My personal ansible scripts, building as I have free time

To get your hosts setup, you need to have hosts populated in /etc/ansible/hosts like so:

    [web]
    345.43.24.218

    [remote]
    123.23.23.25

    [ec2]
    133.3.24.5 ansible_ssh_private_key_file=/home/my_username/.ssh/my_aws.pem ansible_user=ubuntu

    [local]
    localhost  ansible_connection=local

or you can use the default hosts file I have in this repo by running the `setup_env.sh` file to just run locally.

    `./setup_env.sh`

It will set the `ANSIBLE_HOSTS` environment variable and point it to this repo's `hosts` file.

How to run:

    ansible-playbook remote.yml -u [username] -k

The `-k` will prompt you for the password.  Look at ansible docs for how to avoid doing this.

OR

    ansible-playbook remote.yml -K

if you just want to use the current user to connect and then provide sudo password

Suggestions and best practices welcome.

Ansible Documentation can be found [here](http://docs.ansible.com/index.html)

[Jason Meridth](mailto: jmeridth@gmail.com)
