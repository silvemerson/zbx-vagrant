# -*- mode: ruby -*-
# vi: set ft=ruby :

vms = {
  "db-server"        => {"memory"=>"1024" , "cpus"=>"1", "ip" => "20" , 'box' => 'silvemerson/ubuntu-20-04-ansible', 'provision' => 'provision/ansible/db.yaml' },
  "zabbix-server" => {"memory"=>"2048", "cpus"=>"1", "ip" => "10" , 'box' => 'silvemerson/ubuntu-20-04-ansible', 'provision' => 'provision/ansible/zabbix.yaml'}
}

Vagrant.configure("2") do |config|
    
  vms.each do |name, conf|
    config.vm.define "#{name}" do |k|
      k.vm.box = "#{conf['box']}"
      k.vm.hostname = "#{name}"
      k.vm.network 'private_network', ip: "192.168.56.#{conf['ip']}"
      k.vm.provider 'virtualbox' do |vb|
        vb.memory = conf['memory']
        vb.cpus = conf['cpus']
      end
      k.vm.provision 'ansible_local' do |ansible|
        ansible.playbook = "#{conf['provision']}"
        ansible.compatibility_mode = '2.0'
      end
    end
  end
end