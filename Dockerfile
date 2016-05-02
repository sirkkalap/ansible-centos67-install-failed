FROM centos:6.7

RUN yum update -y && \
    yum install -y epel-release

RUN yum update -y && \
    yum install -y python-pip

RUN pip install --upgrade pip

CMD pip install ansible
