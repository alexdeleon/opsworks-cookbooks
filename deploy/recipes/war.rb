include_recipe 'deploy'

node[:deploy].each do |application, deploy|

  opsworks_deploy_dir do
    user 'tomcat'
    group 'tomcat'
    path '/var/lib/tomcat7/webapps'
  end

  opsworks_deploy do
    app application
    deploy_data deploy
  end
end