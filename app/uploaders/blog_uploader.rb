class BlogUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fill: [500, 350]

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
