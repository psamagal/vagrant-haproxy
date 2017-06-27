# Vagrant-HAProxy

Deploys a minimal web app cluster with 2 web servers servers and one server with HAProxy used as load balancer.

### Tools deployed
* Minimalistic web application (built in Python)
* HAProxy

Tools used in preparation
* Vagrant
* Ansible
* VirtualBox

### How to run:

Clone the project
```
git clone https://github.com/psamagal/vagrant-haproxy.git
```

and finally run
```
vagrant up
```

To test it, please run:

```
./test.sh 
```
It will create you and infinite loop with requests to haproxy server which allow you to perform several operations on servers, making sure app keeps always working.

You can also access to the application on your browser using

```
http://localhost:1935 
```

to access the HAProxy stats page

```
http://localhost:9000/stats 
```