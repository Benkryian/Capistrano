# config valid only for current version of Capistrano
lock "3.8.2"

set :application, "AppName"
set :deploy_to, "/var/www/site"
set :repo_url, "git@repo"
set :slackistrano, {
      klass: Slackistrano::SmallDevelopersTwoBit,#TwoBit messaging bot to #ops
      channel: '#myteam',
      webhook: 'https://hooks.slack.com/...'
    }

# task to reload php-fpm
namespace :smalldevelopers do
  desc 'php-fpm reload'
  task :fpm_reload do
    on release_roles :all do |host|
      execute :sudo, :service, 'php7.0-fpm', :reload
    end
  end
end

before "deploy:published", "smalldevelopers:fpm_reload"
