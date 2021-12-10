source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'
# Required by heroku
gem 'railties', '~> 6.0', '>= 6.0.4.1'
gem 'bundler', '~> 2.2.21'
gem 'puma', '~> 4.1'                        # Use Puma as the app server
## User Authentication Management
gem 'devise'
## General server, client and basics
gem 'rails', '~> 6.0.3', '>= 6.0.3.6'       # Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'pg', '>= 0.18', '< 2.0'                # Use postgresql as the database for Active Record
#remove sqlite3, not supported in heroku
#gem 'sqlite3', '~> 1.3', '>= 1.3.11'
gem 'webpacker', '~> 4.0'                   # Transpheroku localile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'turbolinks', '~> 5'                    # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.7'                    # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'popper_js', '~> 2.9.3'
gem 'dotenv-rails'
#trello gem
gem 'ruby-trello', '~> 1.5', '>= 1.5.1'
## UI Gems (not sure which are redundant)
#gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
#gem 'sass-rails', '>= 6':i
gem 'slim-rails'
#alternative
gem 'sassc', '>= 2.1.0'
gem 'sassc-rails'
gem 'bootstrap-sass', '~> 3.4.1', '>= 3.3.6'
gem 'jquery-rails', '~> 4.3'
gem 'bootstrap', '~> 5.1', '>= 5.1.3'
#gem 'jquery-ui-rails', '~> 6.0.1'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
# gem 'bootsnap', '>= 1.4.2', require: true

  group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~>3.0'
  gem 'capybara'
  gem 'database_cleaner'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
