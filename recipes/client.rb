include_recipe 'sensu::default'
sensu_client 'myclient' do
  address '192.168.17.52'
  subscriptions node["roles"] + ["all"]
end
