require 'rspec'
require File.dirname(__FILE__) + '/../src/Photo.rb'
# TODO: Must work out better way of doing this

describe 'Photo' do
   it "should " do
     Photo.new(File.dirname(__FILE__) + '/MuffinsSmall.jpg')
   end
end
