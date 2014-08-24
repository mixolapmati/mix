package "nginx" do
	action :install
end

template "/usr/share/nginx/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

template "/etc/nginx/sites-available/default" do
	source "/etc/nginx/sites-available/default.erb"
	variables({
		:listen_port => "8090"
	})
	action :create
end

service "nginx" do
	action [ :enable, :start ]
end
