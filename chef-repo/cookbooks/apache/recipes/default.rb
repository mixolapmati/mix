package "apache2" do
	action :install
end

template "/var/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

include_attribute "apache2"

service "apache2" do
	action [ :enable, :start ]
end
