class PortfolioUploader < CarrierWave::Uploader::Base


  include CarrierWave::MiniMagick

  storage :aws

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process resize_to_fill: [350, 232]
    process :quality => 100
  end


  def extension_whitelist
    %w(jpg jpeg gif png)
  end


end
