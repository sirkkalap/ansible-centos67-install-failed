FROM centos:6.7

RUN yum update -y && \
    yum install -y epel-release

RUN yum update -y && \
    yum install -y gcc python-pip python-devel python-paramiko

RUN pip install --upgrade pip

RUN pip install PyYAML Jinja2 httplib2 six

CMD pip install ansible
