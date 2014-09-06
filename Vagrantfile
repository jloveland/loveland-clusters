Vagrant.configure("2") do |config|
  config.butcher.knife_config_file = '.chef/knife.rb'
  config.berkshelf.enabled = false
  config.vm.box = "precise32"
  config.omnibus.chef_version = :latest

  config.vm.define :vgrnt do |vgrnt|
    config.vm.hostname = "vgrnt"
    config.vm.provision :chef_client do |chef|
      chef.chef_server_url = "https://api.opscode.com/organizations/loveland-develop"
      chef.log_level = :debug
      chef.validation_client_name = "lsa-validator"
      chef.validation_key_path = ".chef/lsa-validator.pem"
      chef.environment = "home"
      chef.run_list = []
    end
  end

end
