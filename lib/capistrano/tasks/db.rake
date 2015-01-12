namespace :db do
  task :seed do
    on roles(:app) do
      execute "cd #{deploy_to}/current && ~/.rvm/wrappers/ocf/bundle exec rake db:seed RAILS_ENV=#{fetch(:stage)}"
    end
  end
end
