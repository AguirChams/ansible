# ansible
What is this?

This is an Ansible project I use to configure and maintain my personal workstations, install virtual machines and applications , manage security settings, manage the configuration.

Requirements for using ansible 

1-    Operating System: Ansible can be used on various operating systems in this project it's used in Debian/Ubuntu and CentOS. Therefore, your desktop should be running one of these operating systems.

2-    Python: Ansible requires Python version 2.7 or 3.5 or later to be installed on the desktop. It is recommended to use Python 3 as it is the future of the language.

3-    Ansible Installation: Ansible needs to be installed on the desktop. You can use the package manager of your operating system to install Ansible or you can download and install it from the official Ansible website.

4-    SSH: Ansible uses SSH to connect to remote machines and execute tasks. Therefore, SSH should be installed and configured on the desktop.

5-    Inventory file: An inventory file is a list of hosts that Ansible manages. You need to create an inventory file that contains the list of hosts that you want to manage using Ansible.

6-    Playbooks: Playbooks are Ansible's configuration, deployment, and orchestration language. You need to create playbooks that define the tasks that you want Ansible to perform on the remote machines.

7-    Credentials: Ansible requires the credentials to connect to remote machines. You need to provide the username and password or SSH key to connect to the remote machines.


How to use?

1-    you have to define your ansible inventory, in this project i've created a dynamic one using script bash , so you have to run it in your terminal, fisrt make sure the script.sh file has executable permissions. You can use the chmod command to change the file permissions. you can run the command chmod +x script.sh to make the file executable. 

2-    you can run the script by typing ./script.sh in the terminal.


How to run playbook ?

First of all in this project i've used roles , every role is targeting a folder which contains playbooks that are meant to him specially, and to run this role you have only to :


1-    Navigate to the directory where the playbook.yml file is located, in this example it's named ansible and open terminal.

2-    Run this command for example i want to execute access.yml playbook so i write:
              ansible-playbook access.yml
              
                 
Note: to make those roles executable in any desktop and with your own infos , i've created in each folder a bash script by executing it , it will replace those values (the values you want to enter) in vars.yml playbook and then they will be replaced in your main.yml playbook .


Requirements !! :

-     If you want to run S3 role you have to make sure that boto3 is installed in your target systems.

-     If you want to create Vm , make sure that you have Python library (PyVmomi) installed in your target systems.






