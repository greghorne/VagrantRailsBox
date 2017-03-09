# VagrantRailsBox
Create a vagrant box for rails.

vagrant init ubuntu/trusty32

* edit Vagrant file and add following
* config.vm.provider "virtualbox" do |v|
*   v.name = "name_of_your_vm_box"
* end
* config.vm.network "forwarded_port", guest: 3000, host: 3000

vagrant up
vagrant ssh

* use setup.sh to install pieces needed for rails/ruby

./setup.sh
* run following after setup.sh execution
source ~/.profile


