#!/usr/bin/env bash

rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
yum install -y puppetserver

cp /vagrant/sysconfig-puppetserver /etc/sysconfig/puppetserver
cp /vagrant/puppet.conf /etc/puppetlabs/puppet/puppet.conf
( cd /etc/puppetlabs/puppet; tar xvpf /vagrant/ssl.tar )

service puppetserver start

# puppet cert list -a
# puppet agent --test --server util01.localdomain

# vagrant plugin install vagrant-scp 
# vagrant plugin install vagrant-hosts
