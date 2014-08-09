package "nginx" do
	action :install
end

#apackage "nginx-common" do
#        action :install
#end

#package "nginx-full" do
#       action :install
#end

template "/usr/share/nginx/www/index.html" do
	source "../template/index.html.erb"
	mode "0644"
end

service "nginx" do
	action [ :enable, :start ]
end
