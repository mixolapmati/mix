name "web"

override_attributes "nginx" => {"listen_ports" => ["8080"]}
run_list "recipe[nginx]", "recipe[apache]"
