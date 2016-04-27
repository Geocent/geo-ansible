Oracle Database Express Edition 11.2

Requires Ansible 1.2 or newer
Expects CentOS/RHEL 6.x hosts
This playbooks installs and Oracle XE Database running on port 1521 with an HTTP Port of 8080 (http port not needed for database connections). The default User (schema) is 'TEST' with a PWD of 'password'. To change this edit the values in files: `oracle-playbook/roles/oracle/files/xe.rsp` and `oracle-playbook/roles/oracle/files/set_listener.sql`

Then run the playbook, like this:

ansible-playbook -i hosts site.yml
When the playbook run completes, you should be able use SQL Develop or other database clients to access with connection string: `TEST@//localhost:1521/xe` with password: `password`

This is a very simple playbook and could serve as a starting point for more complex database server.

Ideas for Improvement

Here are some ideas for ways that these playbooks could be extended:

* use PLSQL and your custom SQL files to estabilish your custom database schema
* configure Oracle to use SSL
