CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAJUXRTISJYDGEWI3A',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 'us-east-1'  
# This is important. If you follow the railscast guy, he'll put 'eu-east-1' - DON'T DO THAT IF YOU'RE IN THE U.S.!!!
  }
  config.fog_directory  = 'BandWebsite'                     # required
end
