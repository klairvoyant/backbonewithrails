default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
set :repository, "git@github.com:klairvoyant/backbonewithrails.git"  # Your clone URL
set :scm, "git"
set :user, "root"  # The server's user for deploys
set :scm_passphrase, "billjo22"  # The deploy user's password



#require 'bundler/capistrano'
#set :user, 'root'
#set :domain, 'localhost'
#set :applicationdir, "backbone"
#
#
#set :repository,  "git@github.com:klairvoyant/backbonewithrails.git"
## set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
## Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
#
#role :web, domain                          # Your HTTP server, Apache/etc
#role :app, domain                          # This may be the same as your `Web` server
#role :db,  "localhost:3306", :primary => true # This is where Rails migrations will run
##role :db,  "your slave db-server here"
#
## if you want to clean up old releases on each deploy uncomment this:
# #after "deploy:restart", "deploy:cleanup"
#
## deploy config
#set :deploy_to, applicationdir
#set :deploy_via, :export
#
#default_run_options[:pty] = true

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end