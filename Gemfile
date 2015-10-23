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
gem "redactor-rails", github: "glyph-fr/redactor-rails"
gem "simple_form", github: "plataformatec/simple_form"
gem "simple_form_extension", path: "~/gems/simple_form_extension"
gem "meta_tags", github: "vala/meta_tags"
gem "share_buttons", github: "glyph-fr/share_buttons"

gem "whenever"

group :production, :staging do
  gem 'heroku-deflater'
  gem 'passenger'
  gem 'unicorn'
  gem 'exception_notification', github: 'glyph-fr/exception_notification'
  gem 'slack-notifier'
  gem 'rails_12factor'
  gem 'lograge'
end

group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'spring'
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

gem 'newrelic_rpm'

# Gems ajoutées
gem 'para', github: 'para-cms/para'
# gem 'para', path: '~/gems/para'
# gem 'form_verification', github: 'glyph-fr/form_verification'
