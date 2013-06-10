node[:deploy].each do |application, deploy|
	Chef::Log.debug("Deploying WAR application #{application} with type #{deploy[application]}")

	remote_file "#{deploy[application][:deploy_to]}/#{application}.war"
	remote_file deploy[application][:url]
	owner "tomcat"
	group "tomcat"
	action :create
end