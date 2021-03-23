Vagrant.configure("2") do |config|
 config.vm.box = "hashicorp/precise64"

 config.vm.define "web" do |web|
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.network "private_network", ip: "192.168.33.10"
    web.vm.provision "shell", path: "provision.sh"
    web.vm.provision "shell", inline: "sudo apt-get install mysql-client-core5.5"
 end

 config.vm.define "db" do |db|
    db.vm.network "private_network", ip: "192.168.33.11"
    db.vm.provision "shell", path: "db_provision.sh"
 end
end
