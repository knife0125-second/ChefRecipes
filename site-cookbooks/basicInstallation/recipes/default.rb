#
# Cookbook Name:: basicInstallation
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

installPackages = %w(openssl-devel
                     readline-devel
                     zlib-devel
                     curl-devel
                     ImageMagick ImageMagick-devel
                     glib2-devel
                     gd-devel
                     libxml2-devel
                     libxslt-devel
                     pcre-devel
                     perl-devel
                     perl-ExtUtils-Embed
                     w3m
                     wget
                     vim-enhanced
                     bind-utils
                    )

installPackages.each do |p|
    package p do
        action :install
    end
end
