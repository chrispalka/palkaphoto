module CarrierWave
  CarrierWave.configure do |config|

    module MiniMagick
      def quality(percentage)
        manipulate! do |img|
          img.quality(percentage.to_s)
          img = yield(img) if block_given?
          img
        end
      end
    end
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
    config.aws_acl    = 'private'


    # The maximum period for authenticated_urls is only 7 days.
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7

    config.aws_attributes = -> { {
      expires: 1.week.from_now.httpdate,
      cache_control: 'max-age=604800'
    } }

    config.aws_credentials = {
      access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
      secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
      region:            ENV.fetch('AWS_REGION'),
      stub_responses:    Rails.env.test?
    }


  end
end
