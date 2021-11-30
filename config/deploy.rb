# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "rails-test"
set :repo_url, "git@github.com:tokku5552/rails-test.git"
set :rbenv_ruby, File.read('.ruby-version').strip
set :branch, ENV['BRANCH'] || "main"
set :nginx_config_name, "#{fetch(:application)}.conf"
set :nginx_sites_enabled_path, "/etc/nginx/conf.d"
append :linked_files, "config/master.key"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "node_modules"