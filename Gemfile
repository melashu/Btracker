source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '3.1.2'
gem 'bootsnap', require: false
gem 'cancancan'
gem 'devise'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'sassc-rails'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'letter_opener'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
