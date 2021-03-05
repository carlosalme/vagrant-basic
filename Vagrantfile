Vagrant.configure("2") do |config|
 config.vm.box = "hashicorp/precise64"
 config.vm.network "forwarded_port", guest: 80, host: 8080,
  auto_correct: true
 #provision with shell
 #config.vm.provision "shell", path: "provision.sh" 
 #provision with chef 
 config.vm.provision "chef_solo", run_list: ["vagrant_book"]
end
