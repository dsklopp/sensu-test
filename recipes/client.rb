include_recipe "#{cookbook_name}::_core"
sensu_client 'myclient' do
  address '192.168.17.52'
  subscriptions node["roles"] + ["all"]
end
sensu_service "sensu-client" do
  init_style node["sensu"]["init_style"]
  action [:enable, :start]
end

