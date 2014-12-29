#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

packages = %w(mysql mysql-server mysql-devel)

packages.each do |p|
    package p do
        action :install
    end
end

service "mysqld" do
    action [:enable, :start]
end

template "my.cnf" do
    owner "root"
    group "root"
    mode 0644
    path "/etc/my.cnf"
    source "my.cnf.erb"
    notifies :restart, 'service[mysqld]'
end
