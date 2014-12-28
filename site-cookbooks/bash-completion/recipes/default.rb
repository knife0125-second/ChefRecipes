#
# Cookbook Name:: bash-completion
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "bash-completion" do
    action :install
    options "--enablerepo=epel"
end
