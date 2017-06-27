Vagrant.configure("2") do |config|
    config.vm.box = "centos/7"
    config.vm.provision :shell, path: "./scripts/install.sh"
    config.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "256"]
    end

    config.vm.define "haproxy" do |subconfig|
        subconfig.vm.network "public_network", bridge: "enp4s0", ip: "192.168.1.201"
        subconfig.vm.network :forwarded_port, guest: 80, host: 1935
        subconfig.vm.network :forwarded_port, guest: 9000, host: 9000


        subconfig.vm.provision "ansible" do |ansible|
            ansible.playbook = "provision/haproxy.yml"
        end
    end

    config.vm.define :web01 do |subconfig|
        subconfig.vm.network "public_network", bridge: "enp4s0", ip: "192.168.1.221"
        subconfig.vm.provision "ansible" do |ansible|
            ansible.playbook = "provision/websetup.yml"
        end
    end

   config.vm.define :web02 do |subconfig|
       subconfig.vm.network "public_network", bridge: "enp4s0", ip: "192.168.1.222"
       subconfig.vm.provision "ansible" do |ansible|
           ansible.playbook = "provision/websetup.yml"
       end
   end
end