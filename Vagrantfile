# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$provisioning_script = <<EOF
sh -c "curl -s http://get.docker.io/gpg | apt-key add -"
sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y lxc-docker linux-image-extra-`uname -r`
sh -c "echo 'mobydock' > /etc/hostname"
sh -c "echo '127.0.0.1 mobydock' >> /etc/hosts"
service hostname restart
EOF

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "raring64"
  config.vm.box_url = "http://files.fibr.io/vagrant-virtualbox-raring64.box"
  config.vm.box_url = "http://cloud-images.ubuntu.com/raring/current/raring-server-cloudimg-vagrant-amd64-disk1.box"
  config.vm.provision "shell", inline: $provisioning_script

  config.vm.network :private_network, ip: "1.2.3.4", :netmask => "255.255.255.0"
end
