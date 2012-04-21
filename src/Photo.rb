require 'RMagick'

class Photo
  def initialize(file)
    @image = Magick::Image::read(file).first
  end
  
  def isSLR?
    @model.include('EOS')
  end

  private 
  def model
    @image['EXIF:Model'] 
  end
end