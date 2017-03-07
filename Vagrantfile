boxes = [
  { :name => :k8s1,:ip => '192.168.10.213',:cpus => 1,:mem => 1024,:gateway => '192.168.10.1',:provision=>'init_env.sh'},
  { :name => :k8s2,:ip => '192.168.10.214',:cpus => 1,:mem => 1024,:gateway => '192.168.10.1',:provision=>'init_env.sh'}
  ]

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    boxes.each do |opts|
        config.vm.define opts[:name] do |config|
            config.vm.box       = "CentOS-7-x86_64-Minimal"
			config.vm.box_url = "https://atlas.hashicorp.com/brightcove/boxes/centos7.2"
            config.vm.boot_timeout = 360
            config.ssh.username = "vagrant"
            config.ssh.password = "vagrant"
			#config.ssh.host  = opts[:ip]
            config.vm.synced_folder ".", "/vagrant"
            config.vm.network :public_network, ip: opts[:ip]
            #config.vm.network "private_network", ip: opts[:ip]
            config.vm.hostname = "%s.vagrant" % opts[:name].to_s
            config.vm.provider "virtualbox" do |vb|
                vb.customize ["modifyvm", :id, "--cpus", opts[:cpus] ] if opts[:cpus]
                vb.customize ["modifyvm", :id, "--memory", opts[:mem] ] if opts[:mem]
            end
			 config.vm.provision :shell do |s|
              s.path = opts[:provision]
              s.args   = [opts[:ip], opts[:gateway]]
            end
       end
    end
end
