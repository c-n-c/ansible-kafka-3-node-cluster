# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  if ENV['ENV'] == 'single'
    config.vm.define "broker" do |broker|
      broker.vm.box = "centos/7"
      broker.vm.network "private_network", ip: "192.168.99.240"
      broker.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
        vb.name = "broker"
      end
      # broker.vm.provision "shell",
      #                     path: "install.sh"
    end
    config.vm.define "zookeeper" do |zookeeper|
      zookeeper.vm.box = "centos/7"
      zookeeper.vm.network "private_network", ip: "192.168.99.241"
      zookeeper.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
        vb.name = "zookeeper"
      end
      # broker.vm.provision "shell",
      #                     path: "install.sh"
    end
  else
    (0..2).each do |i|
      config.vm.define "node-#{i}" do |kafka_node|
        kafka_node.vm.box = "centos/7"
        kafka_node.vm.network "private_network", ip: "192.168.99.#{250+i}"
        kafka_node.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
          vb.cpus = 2
          vb.name = "kafka_node#{i}"
        end
        # broker.vm.provision "shell",
        #                     path: "install.sh"
      end
    end
  end
end


