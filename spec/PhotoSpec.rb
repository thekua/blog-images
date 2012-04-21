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
end
