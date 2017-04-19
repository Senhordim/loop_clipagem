source 'https://rubygems.org'

ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

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
  gem 'rails-assets-ionicons'
end

gem 'bootstrap-sass', '~> 3.3.6'
gem "font-awesome-rails"
gem 'bootstrap-datepicker-rails'
gem 'bootstrap_sb_admin_base_v2'
gem 'chosen-rails'
gem 'bootstrap-chosen-rails'
gem 'icheck-rails'
gem 'summernote-rails'
gem 'bootstrap-datepicker-rails'
gem 'kaminari'
gem 'kaminari-bootstrap'

gem 'simple_form'
gem 'devise'
gem 'rails-i18n', '~> 5.0.0'
gem 'devise-i18n'
gem 'annotate'
gem 'jquery-turbolinks'
gem 'country_select'
gem 'enumerize'
# gem 'carrierwave', '~> 1.0'
gem 'carrierwave_direct'

gem 'fog-aws'
gem 'figaro'
gem 'rmagick'
gem 'has_scope'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'simplecov', require: false
  gem 'database_cleaner'
  gem 'shoulda-matchers', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "letter_opener"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
