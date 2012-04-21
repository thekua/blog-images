require 'RMagick'

class Photo
  def initialize(file)
    @image = Magick::Image::read(file).first
  end
  
  def isSLR?
    model.include?('EOS')
  end
  
  def width
    @image.columns
  end

  def height
    @image.rows
  end
  
  def write_to(file)
    @image.write file
  end
  
  def shrink_for_blog
    @image = @image.scale(0.141)
  end
 
  private 
  def model
    @image['EXIF:Model'] 
  end
end
