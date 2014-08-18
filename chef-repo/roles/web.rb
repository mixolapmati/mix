name "web"

run_list "recipe[nginx]", "recipe[apache]"
