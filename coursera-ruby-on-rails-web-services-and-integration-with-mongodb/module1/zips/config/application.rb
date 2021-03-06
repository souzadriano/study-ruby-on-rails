require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Zips
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #bootstraps mongoid within applications -- like rails console
    Mongoid.load!('./config/mongoid.yml')

    #which default ORM are we using with scaffold
    #add  --orm none, mongoid, or active_record
    #    to rails generate cmd line to be specific
    #config.generators {|g| g.orm :active_record}
    #config.generators {|g| g.orm :mongoid}

    # Do not swallow errors in after_commit/after_rollback callbacks.
    #config.active_record.raise_in_transactional_callbacks = true

  end
end
