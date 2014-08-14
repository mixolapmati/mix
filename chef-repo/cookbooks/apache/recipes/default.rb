package "apache2" do
	action :install
end

template "/var/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

node.default["apache"]["dir"] = "/etc/apache2"
node.default["apache"]["listen_ports"] = ["8080"]

service "apache2" do
	action [ :enable, :start ]
end
