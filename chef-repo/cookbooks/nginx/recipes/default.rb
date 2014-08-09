package "nginx" do
	action :install
end

template "/usr/share/nginx/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

service "nginx" do
	action [ :enable, :start]
end
