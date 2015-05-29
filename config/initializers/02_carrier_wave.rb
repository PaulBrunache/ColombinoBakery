CarrierWave.configure do |config|
  # config.app_key = ENV["APP_KEY"]
  # config.dropbox_app_secret = ENV["APP_SECRET"]
  # config.cloud_name = ENV["cloud_name"]
  # config.api_key = ENV["api_key"]
  # config.api_secret = ENV["api_secret"]
  
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
