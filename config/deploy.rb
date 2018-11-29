require 'bundler/capistrano'

set :application, "neuro"
set :repository,  "git@github.com:fsuneuro/neuro.git"

set :deploy_to, '/var/www/neuro.fsu.edu'
set :scm, :git
set :branch, "master"

set :user, "jorman"

set :use_sudo, false

set :rails_env, "production"
set :deploy_via, :copy

set :keep_releases, 5

default_run_options[:pty] = true

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server "128.186.21.191", :app, :web, :db, :primary => true



namespace :deploy do
    desc "Symlink shared config files"
	task :symlink_config_files do
    	run "#{ try_sudo } ln -s #{ deploy_to }/shared/config/database.yml #{ current_path }/config/database.yml"
    	run "#{ try_sudo } ln -s #{ deploy_to }/shared/config/secrets.yml #{ current_path }/config/secrets.yml"
	end

	desc "Restart Passenger app"
	task :restart do
    	run "#{ try_sudo } touch #{ File.join(current_path, 'tmp', 'restart.txt') }"
	end
end


after "deploy", "deploy:symlink_config_files"
after "deploy", "deploy:migrations"
after "deploy", "deploy:restart"
after "deploy", "deploy:cleanup"




# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end