# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bento/rockylinux-9"
  config.vm.hostname = "labstackrock"
  config.vm.boot_timeout = 300
  config.vm.network "private_network", ip: "192.168.56.10"
  #config.vm.network "public_network", bridge: "Realtek 8822CE Wireless LAN 802.11ac PCI-E NIC", ip: "192.168.0.30"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "labstackrock"
    vb.memory = "2048"  # Ajuste conforme necessário
    vb.cpus = 2
  end
    
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "/vagrant/ansible/host_setup.yml"  # Playbook do Ansible
  end
  
  #config.vm.synced_folder ".", "/vagrant", type: "rsync"
  
end
