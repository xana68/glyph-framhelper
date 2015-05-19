source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
gem "devise"
gem "devise-i18n"
gem "kaminari"
gem "redactor-rails", github: "xana68/redactor-rails"
gem "simple_form", github: "plataformatec/simple_form"
gem "simple_form_extension"
gem "meta_tags", github: "vala/meta_tags"
gem "share_buttons", github: "glyph-fr/share_buttons"
gem "unicorn"
gem "unicorn-rails"
gem "dotenv-rails"

group :development do
  gem "capistrano", "~> 3.1", require: false
  gem "capistrano-rails", "~> 1.1", require: false
  gem "capistrano-rails-console", require: false
  gem "capistrano-bundler", "~> 1.1.2", require: false
  gem "capistrano-rvm", require: false
  gem "capistrano-db-tasks", require: false
  gem "sepastian-capistrano3-unicorn", require: false
end

gem "whenever"
group :production, :staging do
  gem "exception_notification", github: "glyph-fr/exception_notification"
  gem "slack-notifier"
  gem 'lograge'
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "quiet_assets", github: "glyph-fr/quiet_assets"
end

gem "modernizr-rails"
gem "compass-rails", github: 'Compass/compass-rails', branch: '2-0-stable'
gem "compass-rgbapng", require: "rgbapng"
gem "font-awesome-rails"
gem "bootstrap-sass", "~> 3.2.0"
gem "haml", ">= 3.0.0"
gem "haml-rails"
gem "selectize-rails"
gem "nprogress-rails"
gem "rails-i18n"
gem "active_decorator", github: "glyph-fr/active_decorator", branch: "dev"
gem 'acts-as-taggable-on', '~> 3.4'
gem "paperclip", "~> 4.2"
gem "cancancan", "~> 1.9"
gem "friendly_id", "~> 5.0"
gem "rolify", "~> 3.4"
gem "ransack", ">= 1.4.1"
gem "bootstrap-kaminari-views", ">= 0.0.5"

# Gems ajoutées
gem 'para', github: 'para-cms/para'
# gem 'para', path: '~/gems/para'
# gem 'form_verification', github: 'glyph-fr/form_verification'
