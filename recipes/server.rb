include_recipe "#{cookbook_name}::_core"
include_recipe 'sensu::rabbitmq'
include_recipe 'sensu::redis'
include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'

cookbook_file "/etc/sensu/conf.d/check_cron.json" do
  source 'check_cron.json'
  notifies :restart, 'sensu_service[sensu-server]', :immediately
  notifies :restart, 'sensu_service[sensu-api]', :immediately
end

include_recipe 'uchiwa::default'
