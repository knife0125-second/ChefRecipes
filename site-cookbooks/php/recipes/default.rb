#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "libmcrypt" do
    action :install
    options "--enablerepo=epel"
end

packages = %w(php php-devel php-pear php-mbstring php-xml php-mcrypt php-gd php-pecl-xdebug php-opcache php-pecl-apcu php-phpunit-PHPUnit php-mysqlnd)

packages.each do |p|
    package p do
        action :install
        options "--enablerepo=remi,remi-php55"
    end
end
