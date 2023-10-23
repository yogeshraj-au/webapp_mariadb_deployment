Webapp_mariadb_deployment
=========



Description
------------

This Repo contains an ansible playbook to install required packages, MariaDB, and configure the simple flask web app. These playbooks are specifically written for centos-7. You can either use centos-7 vm or centos docker container which has access to the internet. You can find the docker file in the docker repo for easy use. Build the image and fire up the below command:
```
docker run -it -d --name centos-1 -p 2200:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-2 -p 2201:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-3 -p 2202:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-4 -p 2203:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-5 -p 2204:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-6 -p 2205:22 imageimpressario/centos-ssh-enabled

docker run -it -d --name centos-7 -p 2206:22 imageimpressario/centos-ssh-enabled
```

Before the execution of Ansible playbooks, you must ssh into each container to copy the key. otherwise, it will result in the playbook execution failure.
```
ssh root@localhost -p 2200
```

Example command
----------------

```
ansible-playbook webapp-mysql.yml -i hosts
```

