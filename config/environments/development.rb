Mj::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb
  config.autoflush_log = true
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  config.active_record.auto_explain_threshold_in_seconds = 0.5

  config.assets.compress = false
 
  config.assets.debug = true

  SITE_URL = "www.maheshwarijagruth.com"
  Paperclip.options[:command_path] = "/usr/bin/identify"
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'www.gmail.com',
    :user_name => 'maheshwari.jagruth@gmail.com',
    :password => 'sreenidhistudents',
    :authentication => 'plain',
    :enable_starttls_auto => true
  }

end