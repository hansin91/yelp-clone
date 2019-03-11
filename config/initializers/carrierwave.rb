CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['aws_access_key_id'],
    :aws_secret_access_key  => ENV['aws_secret_access_key'],
    :region                 => ENV['region'],
    :endpoint               => ENV['endpoint']
  }
  config.fog_directory  = ENV['fog_directory']
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.fog_public = false
  config.asset_host = ENV['endpoint']
  config.fog_attributes = { 'Cache-Control' => 'max-age=315576000' }
end