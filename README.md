# Deployment
Before you proceed, you will need to install Ansible (https://www.ansible.com/).

1. Create a file called `hosts` with the following contents:
```
[otw]
[[SERVER_NAME]] ansible_ssh_user=[[SERVER_USER]]
```
Where `SERVER_NAME` and `SERVER_USER` are the server DNS host and ssh user for the web server. 

1. Make a copy of `variables.yml.example` as `variables.yml` and fill it in with the details 
of the site you're creating.

1. Run 
```bash
$ cd <root of this repo>
$ ansible-playbook scripts/deploy-site.yml -i scripts/hosts --extra-vars "@scripts/variables.yml"
```
