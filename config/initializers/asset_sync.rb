if (Rails.env.production? or Rails.env.staging?) && ENV['DISABLE_S3'] != 'true' 
  AssetSync.configure do |config|
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.fog_provider = 'AWS'
    config.aws_access_key_id = ENV['AWS_ACCESS_KEY_ID']
    config.aws_secret_access_key = ENV['AWS_SECRET_ACCESS_KEY']
    config.manifest = true
    config.custom_headers = { '.*' => { cache_control: 'private, max-age=315576000', expires: 1.year.from_now.httpdate } }
    # Invalidate a file on a cdn after uploading files
    # config.cdn_distribution_id = "12345"
    # config.invalidate = ['file1.js']

    # Increase upload performance by configuring your region
    config.fog_region = ENV['FOG_REGION']
    #
    # Don't delete files from the store
    # config.existing_remote_files = "delete"
    #
    # Automatically replace files with their equivalent gzip compressed version
    config.gzip_compression = true
    #
    # Use the Rails generated 'manifest.yml' file to produce the list of files to
    # upload instead of searching the assets directory.
    # config.manifest = true
    #
    # Fail silently.  Useful for environments such as Heroku
    # config.fail_silently = true
  end
end
