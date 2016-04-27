FROM centos:centos6.7

RUN yum install -y epel-release ansible java-1.8.0-openjdk tar
RUN yum install -y ansible

ADD ./files/jboss-eap-6.4.0.zip /tmp/jboss-eap-6.4.0.zip

# Add roles and plays
ADD ./ansible/java /home/ansible/java
ADD ./ansible/plays/java.yml /home/ansible/java.yml
RUN ansible-playbook -i "localhost," -c local /home/ansible/java.yml

ADD ./ansible/jboss /home/ansible/jboss
ADD ./ansible/plays/jboss.yml /home/ansible/jboss.yml
RUN ansible-playbook -i "localhost," -c local /home/ansible/jboss.yml -v
