#
# Cookbook Name:: yumupdate
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "yum-update" do
    user "root"
    command "yum update -y"
    action :run
end
