#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Author:: Alexander De Leon
#
#

#Install tomcat 7
package "tomcat7" do
  action :install
end

#Start tomcat 
service "tomcat7" do
  action :enable
  action :start
end