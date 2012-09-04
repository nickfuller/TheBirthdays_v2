require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end



module TheBirthdaysV2
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'

# If I want to interact directly with AWS S3, without carrierwave, follow along with this:
# http://net.tutsplus.com/tutorials/create-a-simple-music-streaming-app-with-ruby-on-rails/
		# AWS::S3::Base.establish_connection!(
		# 		:access_key_id			=> 'MY_ACCESS_KEY',
		# 		:secret_access_key 	=> 'MY_SECRET_KEY'
		# )
		# 
		# BUCKET='thebirthdays'

  end
end
