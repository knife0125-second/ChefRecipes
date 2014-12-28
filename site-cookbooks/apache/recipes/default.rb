#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

packages = %w(httpd httpd-devel)

packages.each do |p|
    package p do
        action :install
    end
end

service "httpd" do
    action [:enable, :start]
end
