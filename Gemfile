source 'https://rubygems.org'

gem 'rails', '3.2.11'

gem 'mysql2'
#gem 'rails', git: 'https://github.com/rails/rails.git'
#gem 'mysql2'
gem "omniauth"
gem "omniauth-facebook"
#gem "rails_admin", git: 'git://github.com/sferik/rails_admin.git'
gem "haml-rails", ">= 0.2"
#gem "inherited_resources", ">=1.1.2"
gem "will_paginate", ">=3.0.pre2"
gem "devise", ">=1.1.2"
gem "formtastic", ">=1.1.0"
gem "friendly_id", "~>3.0"
gem "compass", ">= 0.10.6"
gem "lemonade", "0.3.4"
#gem "barista", ">= 0.5.0"
gem "inploy", ">=1.6.8"
gem "json"
gem "meta_search"
gem 'paperclip'
gem "nested_has_many_through"
gem 'ancestry'
gem 'googlecharts'
#gem 'activeadmin'
#gem "capybara-envjs"
gem 'exception_notification_rails3', :require => 'exception_notifier'



gem 'jquery-rails', '1.0.12'
gem 'remotipart', '~> 1.0'



group :production do
  gem 'rack-ssl-enforcer'
end

group :development, :test do
  gem "factory_girl_rails"
  gem "rspec-rails", ">=2.0.1"
  gem 'capistrano'
  #gem "evergreen", :require => "evergreen/rails"
  platforms :mri_18 do
    gem "ruby-debug"
  end
  platforms :mri_19 do
    gem "ruby-debug19", :require => 'ruby-debug'
  end
end

group :test do
  gem "rspec", ">=2.0.1"
  gem "remarkable", ">=4.0.0.alpha4"
  gem "remarkable_activemodel", ">=4.0.0.alpha4"
  gem "remarkable_activerecord", ">=4.0.0.alpha4"
  #gem "capybara-envjs"
end

group :cucumber do
  gem "cucumber", ">=0.6.3"
  gem "cucumber-rails", ">=0.3.2"
  gem "capybara", ">=0.3.6"
  gem "database_cleaner", ">=0.5.0"
  gem "spork", ">=0.8.4"
  gem "pickle", ">=0.4.2"
end
