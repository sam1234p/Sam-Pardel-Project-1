## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.


![Screenshot (310)](https://user-images.githubusercontent.com/91719845/149382675-c286e163-43ce-439f-ae8f-8c00a0bd899d.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the ansible folder may be used to install only certain pieces of it, such as Filebeat.
  elk.yml
https://github.com/sam1234p/Sam-Pardel-Project-1/blob/master/Ansible/elk.yml.txt

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly responsive and durable, in addition to restricting traffic to the network.
- Load Balancers primary function is to shift traffic which can stop a denial of service attack. The advantage of a jumpbox is to give a cyber employee access from a single machine that can be monitored and hardened.
Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.

The configuration details of each machine may be found below.
| Name       | Function      | IP Address | OS    |
|------------|---------------|------------|-------|
| Jumpbox    | Gateway       | 10.0.0.4   | Linux |
| Web 1      | Webserver     | 10.0.0.5   | Linux |
| Web 2      | Webserver     | 10.0.0.6   | Linux |
| Web 3      | Webserver     | 10.0.0.7   | Linux |
| ELK-SERVER | ELK Webserver | 10.1.0.4   | Linux |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the ELK machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
Whitelisted IP:71.176.252.122

Machines within the network can only be accessed by _SSH____.
I allowed my Jumpbox access to the ELK-SERVER VM with an IP of 20.102.52.40.

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses    |
|------------|---------------------|-------------------------|
| Jumpbox    | No                  | 71.176.252.122          |
| Web 1      | No                  | 10.0.0.4 71.176.252.122 |
| Web 2      | No                  | 71.176.252.122 10.0.0.4 |
| Web 3      | No                  | 10.0.0.4 71.176.252.122 |
| ELK-SERVER | No                  | 20.102.52.40            |
### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it automates tedious tasks such as provisioning and many other IT needs which frees up employees for more strategic work.

The playbook implements the following tasks:
-installs docker.io and docker python module
-installs pip3 and python3
-tells system to use more memory 
-downloads and launches a docker elk container 
-enables the service docker on boot 
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
![Screenshot (248)](https://user-images.githubusercontent.com/91719845/149383710-b70674c7-1971-4195-a090-ac5334ee7e07.png)


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.5
10.0.0.6
10.0.0.7

We have installed the following Beats on these machines:
-Filebeat
-Metricbeat

These Beats allow us to collect the following information from each machine:
Filebeat collects log data from each machine while Metricbeat collects metrics and statistics.  
### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk.yml file to /etc/ansible.
- Update the elk.yml file to include...
- Run the playbook, and navigate to ELK-SERVER to check that the installation worked as expected.

-Which file is the playbook? Where do you copy it?
The playbook file is elk.yml and you copy it using git to clone my repository and then copying the playbooks file to the previosly mentioned /etc/ansible directory.
-Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
You update the ansible hosts file with your desired IPs then you update your hosts on your playbook to the desired grouping, and finally you can specify which machines install each program by again changing the hosts in the playbook.
-Which URL do you navigate to in order to check that the ELK server is running?
http://yourelkserverpublicip:5601/app/kibana

