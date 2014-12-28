#
# Cookbook Name:: rbenv-ruby
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "rbenv::rbenv_vars"

rbenv_ruby "2.0.0-p598" do
    ruby_version "2.0.0-p598"
    global true
end

rbenv_gem "bundler" do
    ruby_version "2.0.0-p598"
end
