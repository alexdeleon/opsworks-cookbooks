node[:deploy].each do |application, deploy|
	remote_file "#{deploy[application][:deploy_to]}/#{application}.war"
	remote_file deploy[application][:url]
	owner "tomcat"
	group "tomcat"
	action :create
end