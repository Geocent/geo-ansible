## JBoss EAP 6.4.0 Deployment (Standalone or Domain)

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 6.x hosts

These playbooks deploy a very basic implementation of JBoss EAP Server,
version 8. To use them on a remote server, first edit the "hosts" inventory file to contain the
hostnames of the machines on which you want Jboss EAP deployed, and edit the 
group_vars/jboss-servers file to set any Jboss EAP configuration parameters you need.

Then run the playbook, like this:

	ansible-playbook -i hosts site.yml
	
To run this playbook with Vagrant locally:

	vagrant up

When the playbook run completes, you should be able to see the Jboss EAP Server running on the ports you chose, on the target machines.

This is a very simple playbook and could serve as a starting point for more
complex Jboss-based projects. 

### Ideas for Improvement

Here are some ideas for ways that these playbooks could be extended:


