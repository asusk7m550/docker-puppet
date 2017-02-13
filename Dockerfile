FROM    centos:latest
MAINTAINER Jasper Aikema <jasper@aikema.nl>

# Use the puppet repository
RUN rpm --import https://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs && \
rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm

# Update base image
RUN yum -y update && yum clean all

# Install the software
RUN yum -y install puppet epel-release
#RUN yum -y install puppet epel-release git which rubygem-bundler

# Install rvm
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable

#ENV PATH /usr/local/rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

#RUN /bin/bash -l -c "source /etc/profile.d/rvm.sh"

#RUN /bin/bash -l -c "rvm requirements"

#RUN /bin/bash -l -c "rvm install ruby-2.1.3"

#RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

#RUN /bin/bash -l -c "gem install rails:4.1.6 --no-ri --no-rdoc"
