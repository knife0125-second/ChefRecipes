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
