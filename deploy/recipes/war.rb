node[:deploy].each do |application, deploy|
	Chef::Log.debug("Deploying WAR application #{application} with type #{node[application]}")

	remote_file "#{node[application][:deploy_to]}/#{application}.war"
	remote_file node[application][:url]
	owner "tomcat"
	group "tomcat"
	action :create
end