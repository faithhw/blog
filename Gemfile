source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Template language for writing view
# Transpiling to ERB language (default of rails)
gem 'slim-rails'

gem 'kaminari'

# gem 'bootstrap-sass'
gem 'semantic-ui-sass'

# manage constants
gem 'config'

# manage environment variables
gem 'figaro'

# delay action, move to queue
gem 'delayed_job_active_record'

# use to support delay job
gem 'daemons'

# for authentication
gem 'devise'

# for authenticated
gem 'cancancan'

# install active model for drapper below 3.0
# gem 'activemodel-serializers-xml', github: 'rails/activemodel-serializers-xml'

# for view decorator
gem 'draper', '~> 3.0.0.pre1'

# for image processing
gem 'carrierwave'

# for multiple version image upload
gem 'mini_magick'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'byebug', platform: :mri use pry-byebug below
  gem 'pry-rails' # gem to install pry on rails
  gem 'pry-doc' # show method, check documents
  gem 'pry-byebug' # use to type next, continue etc.
  gem 'faker' # use to generate sample data
  gem 'factory_girl_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Test framework for rails
  gem 'rspec-rails'

  # Matcher for rails
  gem 'shoulda-matchers'

  gem 'rails-controller-testing'

  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
