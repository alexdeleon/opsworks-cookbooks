node[:deploy].each do |application, deploy|
	Chef::Log.debug("Deploying WAR application #{application} from #{node[application][:url]}")

	remote_file "#{node[application][:deploy_to]}/#{application}.war" do
		source node[application][:url]
		owner "tomcat"
		group "tomcat"
		action :create
	end
end