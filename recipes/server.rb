include_recipe 'sensu::default'
include_recipe 'sensu::rabbitmq'
include_recipe 'sensu::redis'
include_recipe 'sensu::server_service'
include_recipe 'sensu::api_service'
include_recipe 'uchiwa::default'
cookbook_file "/etc/sensu/conf.d/check_cron.json" do
  source 'check_cron.json'
end
