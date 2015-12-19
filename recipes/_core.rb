include_recipe 'sensu::default'

package 'git'

chef_gem 'sensu-plugin'

directory "/etc/sensu/plugins/community" do
	mode 0750
	owner node["sensu"]["user"]
	group node["sensu"]["group"]
end
git "/etc/sensu/plugins/community" do
	repository "https://github.com/sensu/sensu-community-plugins.git"
	revision 'master'
	action :sync
	user node["sensu"]["user"]
	group node["sensu"]["group"]
end