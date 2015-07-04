My personal ansible scripts, building as I have free time

Make sure you have hosts populated in /etc/ansible/hosts

Example:

    [web]
    345.43.24.218
    
    [remote]
    123.23.23.25

    [ec2]
    133.3.24.5 ansible_ssh_private_key_file=/home/my_username/.ssh/my_aws.pem ansible_ssh_user=ubuntu

    [local]
    localhost  ansible_connection=local

How to run:

    ansible-playbook remote.yml -u [username] -k

The `-k` will prompt you for the password.  Look at ansible docs for how to avoid doing this.

OR

    ansible-playbook remote.yml -K

if you just want to use the current user to connect and then provide sudo password

Suggestions and best practices welcome.

Ansible Documentation can be found [here](http://docs.ansible.com/index.html)

[Jason Meridth](mailto: jmeridth@gmail.com)
