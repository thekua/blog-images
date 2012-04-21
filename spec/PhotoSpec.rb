require 'rspec'
require File.dirname(__FILE__) + '/../src/Photo.rb'
# TODO: Must work out better way of doing this

describe 'Photo' do
   it "should work out that the file has the right model" do
     photo = Photo.new(File.dirname(__FILE__) + '/MuffinsSmall.jpg')
     photo.isSLR?.should be true
   end
end
