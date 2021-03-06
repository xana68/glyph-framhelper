require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GlyphApplicationHelper
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false

    config.i18n.locale = config.i18n.default_locale = :fr
    config.time_zone = "Paris"

    config.sass.preferred_syntax = :sass

    config.eager_load_paths += ["#{ Rails.root }/lib"]
    config.autoload_paths += ["#{ Rails.root }/lib"]

    config.generators do |generators|
      generators.skip_routes     true
      generators.helper          false
      generators.stylesheets     false
      generators.javascripts     false
      generators.test_framework  false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
  end
end
