name "web"

override_attributes({ "apache" => { "listen_port" => "8080"}})
run_list "recipe[nginx]", "recipe[apache]"
