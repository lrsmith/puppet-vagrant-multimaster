Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.define "util01" do |util01|

    util01.vm.hostname = "util01.localdomain"
    util01.vm.provision :shell, path: "bootstrap.sh"

    util01.vm.network :private_network, :ip => '10.20.1.11'
    util01.vm.provision :hosts, :sync_hosts => true

    util01.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end

  config.vm.define "util02" do |util02|

    util02.vm.hostname = "util02.localdomain"
    util02.vm.provision :shell, path: "bootstrap.sh"

    util02.vm.network :private_network, :ip => '10.20.1.12'
    util02.vm.provision :hosts, :sync_hosts => true

    util02.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end

  config.vm.define "util03" do |util03|

    util03.vm.hostname = "util03.localdomain"
    util03.vm.provision :shell, path: "client-bootstrap.sh"

    util03.vm.network :private_network, :ip => '10.20.1.13'
    util03.vm.provision :hosts, :sync_hosts => true

    util03.vm.provider "virtualbox" do |v|
      v.memory = 512
    end
  end

end


