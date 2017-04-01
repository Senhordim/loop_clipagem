source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-ionicons'
  gem 'rails-assets-bootstrap-select'
  gem 'rails-assets-bootstrap-toggle'
end

gem "font-awesome-rails"
gem 'bootstrap-datepicker-rails'
gem 'bootstrap_sb_admin_base_v2'
gem 'chosen-rails'
gem 'bootstrap-chosen-rails'
gem 'icheck-rails'
gem 'summernote-rails'


gem 'simple_form'
gem 'devise'
gem 'rails-i18n', '~> 5.0.0'
gem 'devise-i18n'
gem 'annotate'
gem 'jquery-turbolinks'
gem 'country_select'
gem 'enumerize'
gem 'carrierwave', '~> 1.0'
gem 'fog-aws'
gem 'figaro'
gem 'rmagick'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  # test suite
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'database_cleaner'
  gem 'shoulda-matchers', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
