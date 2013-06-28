# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Treat::Application.initialize!

# gem rack-google-analytics
config.gem 'rack-google-analytics', :lib => 'rack/google-analytics'
config.middleware.use Rack::GoogleAnalytics, :tracker => 'UA-41988756-1'

use Rack::GoogleAnalytics, :tracker => 'UA-41988756-1', :async => false