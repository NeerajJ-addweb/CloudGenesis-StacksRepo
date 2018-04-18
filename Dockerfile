FROM amazonlinux:latest

MAINTAINER Ryan Means <ryan.means@lifeway.com>

RUN yum -y update && \
 yum -y install ruby22 && \
 yum -y install python36 python36-virtualenv python36-pip

RUN python3.6 -m pip install boto boto3 pytest

RUN gem install cfn-nag

RUN yum clean all