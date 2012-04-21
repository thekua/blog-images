require 'rspec'
require File.dirname(__FILE__) + '/../src/Photo.rb'
# TODO: Must work out better way of doing this

describe 'Photo' do
   it "should work out the correct properties" do 
     photo = Photo.new(File.dirname(__FILE__) + '/MuffinsSmall.jpg')
     photo.isSLR?.should be true
     photo.width.should be 300
     photo.height.should be 200
   end
   
   it "should properly resize" do
     photo = Photo.new(File.dirname(__FILE__) + '/MuffinsSmall.jpg')
     photo.shrink_for_blog
     photo.width.should be 42
     photo.height.should be 28
   end
   
   it "should write out file" do
     photo = Photo.new(File.dirname(__FILE__) + '/MuffinsSmall.jpg')
     photo.write_to('newFile.jpg')
     File.exists?('newFile.jpg')
     File.delete('newFile.jpg')
   end
end
