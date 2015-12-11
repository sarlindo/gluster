Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.define "node1" do |node1|
      node1.vm.network "private_network", ip: "192.168.66.10"
      node1.vm.hostname = "node1"
      node1.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", "512"]
        v.customize ["modifyvm", :id, "--cpus", "1"]
      end
  end
  config.vm.define "node2" do |node2|
      node2.vm.network "private_network", ip: "192.168.66.11"
      node2.vm.hostname = "node2"
      node2.vm.provider "virtualbox" do |v|
         v.customize ["modifyvm", :id, "--memory", "512"]
         v.customize ["modifyvm", :id, "--cpus", "1"]
      end
  end
end

