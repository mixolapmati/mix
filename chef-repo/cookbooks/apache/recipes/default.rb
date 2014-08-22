package "apache2" do
	action :install
end

template "/var/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

template "/etc/apache2/ports.conf" do
        source "ports.conf.erb"
        variables ({ 
		:listen_port => "8090"
	})
	action :create
end

service "apache2" do
	action [ :enable, :start, :restart ]
end
