require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Medpeer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end

  config.generators do |g|
    g.template_engine false
    g.javascripts false
    g.stylesheets false
    g.helper false
    g.test_framework :rspec,
                     view_specs: false,
                     routing_specs: false,
                     helper_specs: false,
                     controller_specs: false,
                     request_specs: true
  end

  config.api_only = true
end
