My personal ansible scripts, building as I have free time

Make sure you have hosts populated in /etc/ansible/hosts

Example:
    
    [remote]
    123.23.23.25

    [local]
    localhost  ansible_connection=local

How to run:

    ansible-playbook remote.yaml -u [username] -k

The `-k` will prompt you for the password.  Look at ansible docs for how to avoid doing this.

Suggestions and best practices welcome.

Ansible Documentation can be found [here](http://docs.ansible.com/index.html)

[Jason Meridth](mailto: jmeridth@gmail.com)
