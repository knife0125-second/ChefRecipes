#
# Cookbook Name:: installDevelopmentTools
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "installDevelopmentTools" do
    user "root"
    command "yum groupinstall \"Development Tools\" -y"
    action :run
end
