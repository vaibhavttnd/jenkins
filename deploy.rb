set :application, "app"
set :repository,  "git@github.com:vaibhavttnd/capistrano.git"
set :scm, :git
set :deploy_to, "/var/www/html"
set :user, "ubuntu"
set :use_sudo, true
set :keep_releases, 5
role :app,"127.0.0.1"

namespace :deploy do
 task :restart, :roles => :app  do
          run "#{try_sudo} chmod 775 -R #{File.join(current_path,'myfolder','logs')}"
          run "sudo service nginx reload"
         end
  end
after "deploy:restart", "deploy:cleanup"
task  :staging do 
role :app,“127.0.0.1”
end
task  :production do 
role :app,“127.0.0.1”
end
