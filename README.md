VagrantRailsBox

Create a vagrant box for ruby/rails/pg gem (connector) 

- This is a 32-bit ubuntu VM since my dev machine only has 4GB memory
- Edit setup.sh prior to executing to adjust the version(s) of ruby and rails and also your git credentials

==============================================================

* from the command line of the folder you want to work in type:

  vagrant init ubuntu/trusty32


* edit Vagrant file and add following (adjust "name_of_your_vm_box" to your liking)


  - config.vm.provider "virtualbox" do |v|
    v.name = "name_of_your_vm_box"
  end

  - config.vm.network "forwarded_port", guest: 3000, host: 3000



* command line type:
  
  - vagrant up
  
  - vagrant ssh

  - sudo apt-get update

  - sudo apt-get install git -y

  - git clone https://github.com/greghorne/VagrantRailsBox setup_folder

  - ~/setup_folder/setup.sh




