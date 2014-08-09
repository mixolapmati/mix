package "nginx-common" do
        action :install
end

package "nginx-full" do
       actio :install
end

template "/usr/share/nginx/www/index.html" do
	source "index.html.erb"
	mode "0644"
end

service "nginx" do
	action [ :enable, :start]
end
